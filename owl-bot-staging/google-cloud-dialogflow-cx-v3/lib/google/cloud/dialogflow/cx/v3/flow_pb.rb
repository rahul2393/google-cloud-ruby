# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/flow.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/cx/v3/page_pb'
require 'google/cloud/dialogflow/cx/v3/validation_message_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/cx/v3/flow.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.cx.v3.NluSettings" do
      optional :model_type, :enum, 1, "google.cloud.dialogflow.cx.v3.NluSettings.ModelType"
      optional :classification_threshold, :float, 3
      optional :model_training_mode, :enum, 4, "google.cloud.dialogflow.cx.v3.NluSettings.ModelTrainingMode"
    end
    add_enum "google.cloud.dialogflow.cx.v3.NluSettings.ModelType" do
      value :MODEL_TYPE_UNSPECIFIED, 0
      value :MODEL_TYPE_STANDARD, 1
      value :MODEL_TYPE_ADVANCED, 3
    end
    add_enum "google.cloud.dialogflow.cx.v3.NluSettings.ModelTrainingMode" do
      value :MODEL_TRAINING_MODE_UNSPECIFIED, 0
      value :MODEL_TRAINING_MODE_AUTOMATIC, 1
      value :MODEL_TRAINING_MODE_MANUAL, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.Flow" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      repeated :transition_routes, :message, 4, "google.cloud.dialogflow.cx.v3.TransitionRoute"
      repeated :event_handlers, :message, 10, "google.cloud.dialogflow.cx.v3.EventHandler"
      repeated :transition_route_groups, :string, 15
      optional :nlu_settings, :message, 11, "google.cloud.dialogflow.cx.v3.NluSettings"
    end
    add_message "google.cloud.dialogflow.cx.v3.CreateFlowRequest" do
      optional :parent, :string, 1
      optional :flow, :message, 2, "google.cloud.dialogflow.cx.v3.Flow"
      optional :language_code, :string, 3
    end
    add_message "google.cloud.dialogflow.cx.v3.DeleteFlowRequest" do
      optional :name, :string, 1
      optional :force, :bool, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.ListFlowsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :language_code, :string, 4
    end
    add_message "google.cloud.dialogflow.cx.v3.ListFlowsResponse" do
      repeated :flows, :message, 1, "google.cloud.dialogflow.cx.v3.Flow"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.GetFlowRequest" do
      optional :name, :string, 1
      optional :language_code, :string, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.UpdateFlowRequest" do
      optional :flow, :message, 1, "google.cloud.dialogflow.cx.v3.Flow"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :language_code, :string, 3
    end
    add_message "google.cloud.dialogflow.cx.v3.TrainFlowRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.ValidateFlowRequest" do
      optional :name, :string, 1
      optional :language_code, :string, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.GetFlowValidationResultRequest" do
      optional :name, :string, 1
      optional :language_code, :string, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.FlowValidationResult" do
      optional :name, :string, 1
      repeated :validation_messages, :message, 2, "google.cloud.dialogflow.cx.v3.ValidationMessage"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.dialogflow.cx.v3.ImportFlowRequest" do
      optional :parent, :string, 1
      optional :import_option, :enum, 4, "google.cloud.dialogflow.cx.v3.ImportFlowRequest.ImportOption"
      oneof :flow do
        optional :flow_uri, :string, 2
        optional :flow_content, :bytes, 3
      end
    end
    add_enum "google.cloud.dialogflow.cx.v3.ImportFlowRequest.ImportOption" do
      value :IMPORT_OPTION_UNSPECIFIED, 0
      value :KEEP, 1
      value :FALLBACK, 2
    end
    add_message "google.cloud.dialogflow.cx.v3.ImportFlowResponse" do
      optional :flow, :string, 1
    end
    add_message "google.cloud.dialogflow.cx.v3.ExportFlowRequest" do
      optional :name, :string, 1
      optional :flow_uri, :string, 2
      optional :include_referenced_flows, :bool, 4
    end
    add_message "google.cloud.dialogflow.cx.v3.ExportFlowResponse" do
      oneof :flow do
        optional :flow_uri, :string, 1
        optional :flow_content, :bytes, 2
      end
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          NluSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.NluSettings").msgclass
          NluSettings::ModelType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.NluSettings.ModelType").enummodule
          NluSettings::ModelTrainingMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.NluSettings.ModelTrainingMode").enummodule
          Flow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Flow").msgclass
          CreateFlowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateFlowRequest").msgclass
          DeleteFlowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DeleteFlowRequest").msgclass
          ListFlowsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListFlowsRequest").msgclass
          ListFlowsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListFlowsResponse").msgclass
          GetFlowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetFlowRequest").msgclass
          UpdateFlowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateFlowRequest").msgclass
          TrainFlowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.TrainFlowRequest").msgclass
          ValidateFlowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ValidateFlowRequest").msgclass
          GetFlowValidationResultRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetFlowValidationResultRequest").msgclass
          FlowValidationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.FlowValidationResult").msgclass
          ImportFlowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ImportFlowRequest").msgclass
          ImportFlowRequest::ImportOption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ImportFlowRequest.ImportOption").enummodule
          ImportFlowResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ImportFlowResponse").msgclass
          ExportFlowRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ExportFlowRequest").msgclass
          ExportFlowResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ExportFlowResponse").msgclass
        end
      end
    end
  end
end
