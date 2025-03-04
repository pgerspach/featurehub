package io.featurehub.db.publish.nats

import io.featurehub.mr.events.common.CacheBroadcast
import io.featurehub.mr.events.common.CloudEventCacheBroadcaster
import io.featurehub.mr.events.nats.NatsCloudEventsPublishers
import io.featurehub.mr.events.nats.NatsMRCloudEventsQueueUpdateListener
import io.featurehub.publish.NATSFeature
import io.featurehub.utils.FallbackPropertyConfig
import jakarta.inject.Singleton
import jakarta.ws.rs.core.Feature
import jakarta.ws.rs.core.FeatureContext
import org.glassfish.hk2.api.Immediate
import org.glassfish.jersey.internal.inject.AbstractBinder

class NatsDachaEventingFeature : Feature {
  companion object {
    // we use this only if nats is configured
    fun isEnabled() : Boolean {
      return FallbackPropertyConfig.getConfig("nats.urls") != null
    }

    // enabled by default
    fun isDacha1Enabled(): Boolean =
      FallbackPropertyConfig.getConfig("dacha1.enabled") != "false"
  }

  override fun configure(context: FeatureContext): Boolean {
    if (NATSFeature.isNatsConfigured()) {
      context.register(object : AbstractBinder() {
        override fun configure() {
          // this binds all of the respective cloud events to appropriate outbound channels
          bind(NatsCloudEventsPublishers::class.java).to(NatsCloudEventsPublishers::class.java)
            .`in`(Immediate::class.java)

          // always listen for Edge updates in Cloud Events format
          bind(NatsMRCloudEventsQueueUpdateListener::class.java).to(NatsMRCloudEventsQueueUpdateListener::class.java)
            .`in`(Immediate::class.java)

          if (isDacha1Enabled()) {
            // we want this to fire up immediately on start and start listening. It listens from edge for updates
            // about feature updates and webhook success/failure
            bind(NATSSetupCacheFillers::class.java).to(NATSSetupCacheFillers::class.java).`in`(Immediate::class.java)
            bind(NatsDachaBroadcaster::class.java).to(CacheBroadcast::class.java).`in`(Singleton::class.java)
          }
        }
      })

      return true
    }

    return false
  }
}
