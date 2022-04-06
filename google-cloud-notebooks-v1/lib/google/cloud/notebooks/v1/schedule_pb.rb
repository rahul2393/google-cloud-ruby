# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/notebooks/v1/schedule.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/notebooks/v1/execution_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/notebooks/v1/schedule.proto", :syntax => :proto3) do
    add_message "google.cloud.notebooks.v1.Schedule" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :state, :enum, 4, "google.cloud.notebooks.v1.Schedule.State"
      optional :cron_schedule, :string, 5
      optional :time_zone, :string, 6
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :update_time, :message, 8, "google.protobuf.Timestamp"
      optional :execution_template, :message, 9, "google.cloud.notebooks.v1.ExecutionTemplate"
      repeated :recent_executions, :message, 10, "google.cloud.notebooks.v1.Execution"
    end
    add_enum "google.cloud.notebooks.v1.Schedule.State" do
      value :STATE_UNSPECIFIED, 0
      value :ENABLED, 1
      value :PAUSED, 2
      value :DISABLED, 3
      value :UPDATE_FAILED, 4
      value :INITIALIZING, 5
      value :DELETING, 6
    end
  end
end

module Google
  module Cloud
    module Notebooks
      module V1
        Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Schedule").msgclass
        Schedule::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.notebooks.v1.Schedule.State").enummodule
      end
    end
  end
end
