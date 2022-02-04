# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# [START networkconnectivity_v1alpha1_generated_HubService_CreateSpoke_sync]
require "google/cloud/network_connectivity/v1alpha1"

# Create a client object. The client can be reused for multiple calls.
client = Google::Cloud::NetworkConnectivity::V1alpha1::HubService::Client.new

# Create a request. To set request fields, pass in keyword arguments.
request = Google::Cloud::NetworkConnectivity::V1alpha1::CreateSpokeRequest.new

# Call the create_spoke method.
result = client.create_spoke request

# The returned object is of type Gapic::Operation. You can use this
# object to check the status of an operation, cancel it, or wait
# for results. Here is how to block until completion:
result.wait_until_done! timeout: 60
if result.response?
  p result.response
else
  puts "Error!"
end
# [END networkconnectivity_v1alpha1_generated_HubService_CreateSpoke_sync]
