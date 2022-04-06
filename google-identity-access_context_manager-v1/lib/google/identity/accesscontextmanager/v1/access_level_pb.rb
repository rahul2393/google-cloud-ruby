# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/identity/accesscontextmanager/v1/access_level.proto

require 'google/api/resource_pb'
require 'google/identity/accesscontextmanager/type/device_resources_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/expr_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/identity/accesscontextmanager/v1/access_level.proto", :syntax => :proto3) do
    add_message "google.identity.accesscontextmanager.v1.AccessLevel" do
      optional :name, :string, 1
      optional :title, :string, 2
      optional :description, :string, 3
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      oneof :level do
        optional :basic, :message, 4, "google.identity.accesscontextmanager.v1.BasicLevel"
        optional :custom, :message, 5, "google.identity.accesscontextmanager.v1.CustomLevel"
      end
    end
    add_message "google.identity.accesscontextmanager.v1.BasicLevel" do
      repeated :conditions, :message, 1, "google.identity.accesscontextmanager.v1.Condition"
      optional :combining_function, :enum, 2, "google.identity.accesscontextmanager.v1.BasicLevel.ConditionCombiningFunction"
    end
    add_enum "google.identity.accesscontextmanager.v1.BasicLevel.ConditionCombiningFunction" do
      value :AND, 0
      value :OR, 1
    end
    add_message "google.identity.accesscontextmanager.v1.Condition" do
      repeated :ip_subnetworks, :string, 1
      optional :device_policy, :message, 2, "google.identity.accesscontextmanager.v1.DevicePolicy"
      repeated :required_access_levels, :string, 3
      optional :negate, :bool, 5
      repeated :members, :string, 6
      repeated :regions, :string, 7
    end
    add_message "google.identity.accesscontextmanager.v1.CustomLevel" do
      optional :expr, :message, 1, "google.type.Expr"
    end
    add_message "google.identity.accesscontextmanager.v1.DevicePolicy" do
      optional :require_screenlock, :bool, 1
      repeated :allowed_encryption_statuses, :enum, 2, "google.identity.accesscontextmanager.type.DeviceEncryptionStatus"
      repeated :os_constraints, :message, 3, "google.identity.accesscontextmanager.v1.OsConstraint"
      repeated :allowed_device_management_levels, :enum, 6, "google.identity.accesscontextmanager.type.DeviceManagementLevel"
      optional :require_admin_approval, :bool, 7
      optional :require_corp_owned, :bool, 8
    end
    add_message "google.identity.accesscontextmanager.v1.OsConstraint" do
      optional :os_type, :enum, 1, "google.identity.accesscontextmanager.type.OsType"
      optional :minimum_version, :string, 2
      optional :require_verified_chrome_os, :bool, 3
    end
  end
end

module Google
  module Identity
    module AccessContextManager
      module V1
        AccessLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.identity.accesscontextmanager.v1.AccessLevel").msgclass
        BasicLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.identity.accesscontextmanager.v1.BasicLevel").msgclass
        BasicLevel::ConditionCombiningFunction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.identity.accesscontextmanager.v1.BasicLevel.ConditionCombiningFunction").enummodule
        Condition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.identity.accesscontextmanager.v1.Condition").msgclass
        CustomLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.identity.accesscontextmanager.v1.CustomLevel").msgclass
        DevicePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.identity.accesscontextmanager.v1.DevicePolicy").msgclass
        OsConstraint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.identity.accesscontextmanager.v1.OsConstraint").msgclass
      end
    end
  end
end
