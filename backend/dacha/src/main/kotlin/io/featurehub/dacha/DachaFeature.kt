package io.featurehub.dacha

import io.featurehub.dacha.api.DachaApiKeyService
import io.featurehub.dacha.caching.FastlyPublisher
import io.featurehub.dacha.resource.DachaApiKeyResource
import io.featurehub.dacha.resource.DachaEdgeNATSAdapter
import io.featurehub.dacha.resource.DachaEnvironmentResource
import io.featurehub.dacha.resource.DacheEdgeNATSAdapterService
import io.featurehub.enricher.FeatureEnrichmentCache
import io.featurehub.enricher.EnrichmentProcessingFeature
import io.featurehub.health.HealthSource
import jakarta.inject.Singleton
import jakarta.ws.rs.core.Feature
import jakarta.ws.rs.core.FeatureContext
import org.glassfish.hk2.api.Immediate
import org.glassfish.jersey.internal.inject.AbstractBinder

class DachaFeature : Feature {
  override fun configure(context: FeatureContext): Boolean {
    context.register(EnrichmentProcessingFeature::class.java)

    arrayOf(
      DachaApiKeyResource::class.java,
      DachaEnvironmentResource::class.java).forEach { clazz -> context.register(clazz) }

    context.register(object: AbstractBinder() {
      override fun configure() {
        bind(InMemoryCache::class.java).to(InternalCache::class.java).to(
          FeatureEnrichmentCache::class.java).`in`(Singleton::class.java)
        if (FastlyPublisher.fastlyEnabled()) {
          bind(FastlyPublisher::class.java).to(CacheUpdateListener::class.java).`in`(Singleton::class.java)
        }
        bind(ServerConfig::class.java).to(ServerConfig::class.java).`in`(Singleton::class.java)
        bind(CacheManager::class.java).to(CacheManager::class.java).to(HealthSource::class.java).`in`(Immediate::class.java)
        bind(DacheEdgeNATSAdapterService::class.java).to(DachaEdgeNATSAdapter::class.java).`in`(Singleton::class.java)
        // we need it internally as well as exposing it
        bind(DachaApiKeyResource::class.java).to(DachaApiKeyService::class.java).`in`(Singleton::class.java)
      }
    })

    return true
  }
}
