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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/bigtable/admin/v2/bigtable_instance_admin"

class ::Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::ClientPathsTest < Minitest::Test
  def test_app_profile_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.app_profile_path project: "value0", instance: "value1", app_profile: "value2"
      assert_equal "projects/value0/instances/value1/appProfiles/value2", path
    end
  end

  def test_cluster_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cluster_path project: "value0", instance: "value1", cluster: "value2"
      assert_equal "projects/value0/instances/value1/clusters/value2", path
    end
  end

  def test_crypto_key_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.crypto_key_path project: "value0", location: "value1", key_ring: "value2", crypto_key: "value3"
      assert_equal "projects/value0/locations/value1/keyRings/value2/cryptoKeys/value3", path
    end
  end

  def test_instance_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.instance_path project: "value0", instance: "value1"
      assert_equal "projects/value0/instances/value1", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableInstanceAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end
end
