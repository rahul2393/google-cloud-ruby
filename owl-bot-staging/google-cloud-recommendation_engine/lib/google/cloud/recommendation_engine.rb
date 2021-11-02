# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/recommendation_engine/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :recommendation_engine do |config|
  config.add_field! :endpoint,      "recommendationengine.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module RecommendationEngine
      ##
      # Create a new client object for CatalogService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client](https://googleapis.dev/ruby/google-cloud-recommendation_engine-v1beta1/latest/Google/Cloud/RecommendationEngine/V1beta1/CatalogService/Client.html)
      # for version V1beta1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the CatalogService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About CatalogService
      #
      # Service for ingesting catalog information of the customer's website.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1beta1`.
      # @return [CatalogService::Client] A client object for the specified version.
      #
      def self.catalog_service version: :v1beta1, &block
        require "google/cloud/recommendation_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::RecommendationEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::RecommendationEngine.const_get package_name
        package_module.const_get(:CatalogService).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for PredictionApiKeyRegistry.
      #
      # By default, this returns an instance of
      # [Google::Cloud::RecommendationEngine::V1beta1::PredictionApiKeyRegistry::Client](https://googleapis.dev/ruby/google-cloud-recommendation_engine-v1beta1/latest/Google/Cloud/RecommendationEngine/V1beta1/PredictionApiKeyRegistry/Client.html)
      # for version V1beta1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the PredictionApiKeyRegistry service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About PredictionApiKeyRegistry
      #
      # Service for registering API keys for use with the `predict` method. If you
      # use an API key to request predictions, you must first register the API key.
      # Otherwise, your prediction request is rejected. If you use OAuth to
      # authenticate your `predict` method call, you do not need to register an API
      # key. You can register up to 20 API keys per project.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1beta1`.
      # @return [PredictionApiKeyRegistry::Client] A client object for the specified version.
      #
      def self.prediction_api_key_registry version: :v1beta1, &block
        require "google/cloud/recommendation_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::RecommendationEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::RecommendationEngine.const_get package_name
        package_module.const_get(:PredictionApiKeyRegistry).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for PredictionService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::RecommendationEngine::V1beta1::PredictionService::Client](https://googleapis.dev/ruby/google-cloud-recommendation_engine-v1beta1/latest/Google/Cloud/RecommendationEngine/V1beta1/PredictionService/Client.html)
      # for version V1beta1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the PredictionService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About PredictionService
      #
      # Service for making recommendation prediction.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1beta1`.
      # @return [PredictionService::Client] A client object for the specified version.
      #
      def self.prediction_service version: :v1beta1, &block
        require "google/cloud/recommendation_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::RecommendationEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::RecommendationEngine.const_get package_name
        package_module.const_get(:PredictionService).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for UserEventService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::RecommendationEngine::V1beta1::UserEventService::Client](https://googleapis.dev/ruby/google-cloud-recommendation_engine-v1beta1/latest/Google/Cloud/RecommendationEngine/V1beta1/UserEventService/Client.html)
      # for version V1beta1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the UserEventService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About UserEventService
      #
      # Service for ingesting end user actions on the customer website.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1beta1`.
      # @return [UserEventService::Client] A client object for the specified version.
      #
      def self.user_event_service version: :v1beta1, &block
        require "google/cloud/recommendation_engine/#{version.to_s.downcase}"

        package_name = Google::Cloud::RecommendationEngine
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::RecommendationEngine.const_get package_name
        package_module.const_get(:UserEventService).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-recommendation_engine library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional gRPC headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.recommendation_engine if block_given?

        ::Google::Cloud.configure.recommendation_engine
      end
    end
  end
end

helper_path = ::File.join __dir__, "recommendation_engine", "helpers.rb"
require "google/cloud/recommendation_engine/helpers" if ::File.file? helper_path
