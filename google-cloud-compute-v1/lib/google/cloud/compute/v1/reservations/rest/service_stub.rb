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

require "google/cloud/compute/v1/compute_pb"

module Google
  module Cloud
    module Compute
      module V1
        module Reservations
          module Rest
            ##
            # REST service stub for the Reservations service.
            # service stub contains baseline method implementations
            # including transcoding, making the REST call and deserialing the response
            #
            class ServiceStub
              def initialize endpoint:, credentials:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials
              end

              ##
              # Baseline implementation for the aggregated_list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListReservationsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::ReservationAggregatedList]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::ReservationAggregatedList]
              #   A result object deserialized from the server's reply
              def aggregated_list request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, query_string_params = transcode_aggregated_list_request request_pb
                response = @client_stub.make_get_request(
                  uri:     uri,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::ReservationAggregatedList.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the aggregated_list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::AggregatedListReservationsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_aggregated_list_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/aggregated/reservations"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.has_filter?
                query_string_params["includeAllScopes"] = request_pb.include_all_scopes.to_s if request_pb.has_include_all_scopes?
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.has_max_results?
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.has_order_by?
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.has_page_token?
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.has_return_partial_success?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteReservationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def delete request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, query_string_params = transcode_delete_request request_pb
                response = @client_stub.make_delete_request(
                  uri:     uri,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteReservationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_delete_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/reservations/#{request_pb.reservation}"
                body = nil
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetReservationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Reservation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Reservation]
              #   A result object deserialized from the server's reply
              def get request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, _query_string_params = transcode_get_request request_pb
                response = @client_stub.make_get_request(
                  uri:     uri,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Reservation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetReservationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/reservations/#{request_pb.reservation}"
                body = nil
                query_string_params = {}

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the get_iam_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetIamPolicyReservationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Policy]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Policy]
              #   A result object deserialized from the server's reply
              def get_iam_policy request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, query_string_params = transcode_get_iam_policy_request request_pb
                response = @client_stub.make_get_request(
                  uri:     uri,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Policy.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the get_iam_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetIamPolicyReservationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_get_iam_policy_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/reservations/#{request_pb.resource}/getIamPolicy"
                body = nil
                query_string_params = {}
                query_string_params["optionsRequestedPolicyVersion"] = request_pb.options_requested_policy_version.to_s if request_pb.has_options_requested_policy_version?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertReservationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def insert request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_insert_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertReservationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_insert_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/reservations"
                body = request_pb.reservation_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListReservationsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::ReservationList]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::ReservationList]
              #   A result object deserialized from the server's reply
              def list request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, _body, query_string_params = transcode_list_request request_pb
                response = @client_stub.make_get_request(
                  uri:     uri,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::ReservationList.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListReservationsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_list_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/reservations"
                body = nil
                query_string_params = {}
                query_string_params["filter"] = request_pb.filter.to_s if request_pb.has_filter?
                query_string_params["maxResults"] = request_pb.max_results.to_s if request_pb.has_max_results?
                query_string_params["orderBy"] = request_pb.order_by.to_s if request_pb.has_order_by?
                query_string_params["pageToken"] = request_pb.page_token.to_s if request_pb.has_page_token?
                query_string_params["returnPartialSuccess"] = request_pb.return_partial_success.to_s if request_pb.has_return_partial_success?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the resize REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ResizeReservationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def resize request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_resize_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the resize REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ResizeReservationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_resize_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/reservations/#{request_pb.reservation}/resize"
                body = request_pb.reservations_resize_request_resource.to_json
                query_string_params = {}
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the set_iam_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetIamPolicyReservationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Policy]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Policy]
              #   A result object deserialized from the server's reply
              def set_iam_policy request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, _query_string_params = transcode_set_iam_policy_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Policy.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the set_iam_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetIamPolicyReservationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_set_iam_policy_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/reservations/#{request_pb.resource}/setIamPolicy"
                body = request_pb.zone_set_policy_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the test_iam_permissions REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::TestIamPermissionsReservationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::TestPermissionsResponse]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::TestPermissionsResponse]
              #   A result object deserialized from the server's reply
              def test_iam_permissions request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, _query_string_params = transcode_test_iam_permissions_request request_pb
                response = @client_stub.make_post_request(
                  uri:     uri,
                  body:    body,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::TestPermissionsResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the test_iam_permissions REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::TestIamPermissionsReservationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_test_iam_permissions_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/reservations/#{request_pb.resource}/testIamPermissions"
                body = request_pb.test_permissions_request_resource.to_json
                query_string_params = {}

                [uri, body, query_string_params]
              end

              ##
              # Baseline implementation for the update REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::UpdateReservationRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, response] Access the result along with the Faraday response object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam response [::Faraday::Response]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def update request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                uri, body, query_string_params = transcode_update_request request_pb
                response = @client_stub.make_patch_request(
                  uri:     uri,
                  body:    body,
                  params:  query_string_params,
                  options: options
                )
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, response if block_given?
                result
              end

              ##
              # GRPC transcoding helper method for the update REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::UpdateReservationRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def transcode_update_request request_pb
                uri = "/compute/v1/projects/#{request_pb.project}/zones/#{request_pb.zone}/reservations/#{request_pb.reservation}"
                body = request_pb.reservation_resource.to_json
                query_string_params = {}
                query_string_params["paths"] = request_pb.paths.to_s if request_pb.has_paths?
                query_string_params["requestId"] = request_pb.request_id.to_s if request_pb.has_request_id?
                query_string_params["updateMask"] = request_pb.update_mask.to_s if request_pb.has_update_mask?

                [uri, body, query_string_params]
              end
            end
          end
        end
      end
    end
  end
end
