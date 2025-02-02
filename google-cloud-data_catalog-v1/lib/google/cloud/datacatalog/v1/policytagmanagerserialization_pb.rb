# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1/policytagmanagerserialization.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/datacatalog/v1/policytagmanager_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/datacatalog/v1/policytagmanagerserialization.proto", :syntax => :proto3) do
    add_message "google.cloud.datacatalog.v1.SerializedTaxonomy" do
      optional :display_name, :string, 1
      optional :description, :string, 2
      repeated :policy_tags, :message, 3, "google.cloud.datacatalog.v1.SerializedPolicyTag"
      repeated :activated_policy_types, :enum, 4, "google.cloud.datacatalog.v1.Taxonomy.PolicyType"
    end
    add_message "google.cloud.datacatalog.v1.SerializedPolicyTag" do
      optional :policy_tag, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      repeated :child_policy_tags, :message, 4, "google.cloud.datacatalog.v1.SerializedPolicyTag"
    end
    add_message "google.cloud.datacatalog.v1.ReplaceTaxonomyRequest" do
      optional :name, :string, 1
      optional :serialized_taxonomy, :message, 2, "google.cloud.datacatalog.v1.SerializedTaxonomy"
    end
    add_message "google.cloud.datacatalog.v1.ImportTaxonomiesRequest" do
      optional :parent, :string, 1
      oneof :source do
        optional :inline_source, :message, 2, "google.cloud.datacatalog.v1.InlineSource"
        optional :cross_regional_source, :message, 3, "google.cloud.datacatalog.v1.CrossRegionalSource"
      end
    end
    add_message "google.cloud.datacatalog.v1.InlineSource" do
      repeated :taxonomies, :message, 1, "google.cloud.datacatalog.v1.SerializedTaxonomy"
    end
    add_message "google.cloud.datacatalog.v1.CrossRegionalSource" do
      optional :taxonomy, :string, 1
    end
    add_message "google.cloud.datacatalog.v1.ImportTaxonomiesResponse" do
      repeated :taxonomies, :message, 1, "google.cloud.datacatalog.v1.Taxonomy"
    end
    add_message "google.cloud.datacatalog.v1.ExportTaxonomiesRequest" do
      optional :parent, :string, 1
      repeated :taxonomies, :string, 2
      oneof :destination do
        optional :serialized_taxonomies, :bool, 3
      end
    end
    add_message "google.cloud.datacatalog.v1.ExportTaxonomiesResponse" do
      repeated :taxonomies, :message, 1, "google.cloud.datacatalog.v1.SerializedTaxonomy"
    end
  end
end

module Google
  module Cloud
    module DataCatalog
      module V1
        SerializedTaxonomy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.SerializedTaxonomy").msgclass
        SerializedPolicyTag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.SerializedPolicyTag").msgclass
        ReplaceTaxonomyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ReplaceTaxonomyRequest").msgclass
        ImportTaxonomiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ImportTaxonomiesRequest").msgclass
        InlineSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.InlineSource").msgclass
        CrossRegionalSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.CrossRegionalSource").msgclass
        ImportTaxonomiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ImportTaxonomiesResponse").msgclass
        ExportTaxonomiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ExportTaxonomiesRequest").msgclass
        ExportTaxonomiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ExportTaxonomiesResponse").msgclass
      end
    end
  end
end
