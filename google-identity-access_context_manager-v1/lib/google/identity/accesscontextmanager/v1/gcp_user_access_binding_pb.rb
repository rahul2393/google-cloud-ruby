# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/identity/accesscontextmanager/v1/gcp_user_access_binding.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/identity/accesscontextmanager/v1/gcp_user_access_binding.proto", :syntax => :proto3) do
    add_message "google.identity.accesscontextmanager.v1.GcpUserAccessBinding" do
      optional :name, :string, 1
      optional :group_key, :string, 2
      repeated :access_levels, :string, 3
    end
  end
end

module Google
  module Identity
    module AccessContextManager
      module V1
        GcpUserAccessBinding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.identity.accesscontextmanager.v1.GcpUserAccessBinding").msgclass
      end
    end
  end
end
