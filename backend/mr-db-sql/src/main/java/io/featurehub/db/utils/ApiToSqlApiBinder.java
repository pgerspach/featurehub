package io.featurehub.db.utils;

import io.featurehub.db.api.ApplicationApi;
import io.featurehub.db.api.AuthenticationApi;
import io.featurehub.db.api.EnvironmentApi;
import io.featurehub.db.api.FeatureApi;
import io.featurehub.db.api.GroupApi;
import io.featurehub.db.api.OrganizationApi;
import io.featurehub.db.api.PersonApi;
import io.featurehub.db.api.PortfolioApi;
import io.featurehub.db.api.RolloutStrategyApi;
import io.featurehub.db.api.RolloutStrategyValidator;
import io.featurehub.db.api.ServiceAccountApi;
import io.featurehub.db.api.SessionApi;
import io.featurehub.db.api.SetupApi;
import io.featurehub.db.api.UserStateApi;
import io.featurehub.db.api.WebhookApi;
import io.featurehub.db.listener.FeatureUpdateBySDKApi;
import io.featurehub.db.services.ApplicationSqlApi;
import io.featurehub.db.services.ArchiveStrategy;
import io.featurehub.db.services.AuthenticationSqlApi;
import io.featurehub.db.services.Conversions;
import io.featurehub.db.services.ConvertUtils;
import io.featurehub.db.services.DbArchiveStrategy;
import io.featurehub.db.services.EnvironmentSqlApi;
import io.featurehub.db.services.FeatureSqlApi;
import io.featurehub.db.services.GroupSqlApi;
import io.featurehub.db.services.InternalFeatureSqlApi;
import io.featurehub.db.services.InternalGroupSqlApi;
import io.featurehub.db.services.OrganizationSqlApi;
import io.featurehub.db.services.PersonSqlApi;
import io.featurehub.db.services.PortfolioSqlApi;
import io.featurehub.db.services.RolloutStrategySqlApi;
import io.featurehub.db.services.ServiceAccountSqlApi;
import io.featurehub.db.services.SetupSqlApi;
import io.featurehub.db.services.UserStateSqlApi;
import io.featurehub.db.services.WebhookSqlApi;
import io.featurehub.db.services.strategies.RolloutStrategyValidationUtils;
import jakarta.inject.Singleton;
import org.glassfish.jersey.internal.inject.AbstractBinder;

public class ApiToSqlApiBinder extends AbstractBinder {
  @Override
  protected void configure() {
    bind(OrganizationSqlApi.class).to(OrganizationApi.class).in(Singleton.class);
    bind(AuthenticationSqlApi.class).to(AuthenticationApi.class).to(SessionApi.class).in(Singleton.class);
    bind(SetupSqlApi.class).to(SetupApi.class).in(Singleton.class);
    bind(PortfolioSqlApi.class).to(PortfolioApi.class).in(Singleton.class);
    bind(GroupSqlApi.class).to(GroupApi.class).to(InternalGroupSqlApi.class).in(Singleton.class);
    bind(ConvertUtils.class).to(Conversions.class).in(Singleton.class);
    bind(PersonSqlApi.class).to(PersonApi.class).in(Singleton.class);
    bind(ServiceAccountSqlApi.class).to(ServiceAccountApi.class).in(Singleton.class);
    bind(ApplicationSqlApi.class).to(ApplicationApi.class).in(Singleton.class);
    bind(EnvironmentSqlApi.class).to(EnvironmentApi.class).in(Singleton.class);
    bind(FeatureSqlApi.class).to(InternalFeatureSqlApi.class).to(FeatureApi.class).to(FeatureUpdateBySDKApi.class).in(Singleton.class);
    bind(DbArchiveStrategy.class).to(ArchiveStrategy.class).in(Singleton.class);
    bind(UserStateSqlApi.class).to(UserStateApi.class).in(Singleton.class);
    bind(RolloutStrategyValidationUtils.class).to(RolloutStrategyValidator.class).in(Singleton.class);
    bind(RolloutStrategySqlApi.class).to(RolloutStrategyApi.class).in(Singleton.class);
    bind(WebhookSqlApi.class).to(WebhookApi.class).in(Singleton.class);
  }
}
