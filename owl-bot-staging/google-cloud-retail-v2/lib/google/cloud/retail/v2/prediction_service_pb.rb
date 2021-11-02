# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/prediction_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/cloud/retail/v2/user_event_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/retail/v2/prediction_service.proto", :syntax => :proto3) do
    add_message "google.cloud.retail.v2.PredictRequest" do
      optional :placement, :string, 1
      optional :user_event, :message, 2, "google.cloud.retail.v2.UserEvent"
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :filter, :string, 5
      optional :validate_only, :bool, 6
      map :params, :string, :message, 7, "google.protobuf.Value"
      map :labels, :string, :string, 8
    end
    add_message "google.cloud.retail.v2.PredictResponse" do
      repeated :results, :message, 1, "google.cloud.retail.v2.PredictResponse.PredictionResult"
      optional :attribution_token, :string, 2
      repeated :missing_ids, :string, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.retail.v2.PredictResponse.PredictionResult" do
      optional :id, :string, 1
      map :metadata, :string, :message, 2, "google.protobuf.Value"
    end
  end
end

module Google
  module Cloud
    module Retail
      module V2
        PredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PredictRequest").msgclass
        PredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PredictResponse").msgclass
        PredictResponse::PredictionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.PredictResponse.PredictionResult").msgclass
      end
    end
  end
end