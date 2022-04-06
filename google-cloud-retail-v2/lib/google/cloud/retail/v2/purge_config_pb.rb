# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/purge_config.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/retail/v2/purge_config.proto", :syntax => :proto3) do
    add_message "google.cloud.retail.v2.PurgeMetadata" do
    end
    add_message "google.cloud.retail.v2.PurgeUserEventsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :force, :bool, 3
    end
    add_message "google.cloud.retail.v2.PurgeUserEventsResponse" do
      optional :purged_events_count, :int64, 1
    end
  end
end

module Google
  module Cloud
    module Retail
      module V2
        PurgeMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PurgeMetadata").msgclass
        PurgeUserEventsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PurgeUserEventsRequest").msgclass
        PurgeUserEventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PurgeUserEventsResponse").msgclass
      end
    end
  end
end
