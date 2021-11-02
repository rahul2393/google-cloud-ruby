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


module Google
  module Cloud
    module ResourceManager
      module V3
        # A TagValue is a child of a particular TagKey. This is used to group
        # cloud resources for the purpose of controlling them using policies.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. Resource name for TagValue in the format `tagValues/456`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Immutable. The resource name of the new TagValue's parent TagKey.
        #     Must be of the form `tagKeys/{tag_key_id}`.
        # @!attribute [rw] short_name
        #   @return [::String]
        #     Required. Immutable. User-assigned short name for TagValue. The short name should be
        #     unique for TagValues within the same parent TagKey.
        #
        #     The short name must be 63 characters or less, beginning and ending with
        #     an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_),
        #     dots (.), and alphanumerics between.
        # @!attribute [r] namespaced_name
        #   @return [::String]
        #     Output only. Namespaced name of the TagValue. Must be in the format
        #     `{organization_id}/{tag_key_short_name}/{short_name}`.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. User-assigned description of the TagValue.
        #     Must not exceed 256 characters.
        #
        #     Read-write.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Creation time.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Update time.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. Entity tag which users can pass to prevent race conditions. This field is
        #     always set in server responses. See UpdateTagValueRequest for details.
        class TagValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for listing TagValues for the specified TagKey.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name for TagKey, parent of the TagValues to be listed,
        #     in the format `tagKeys/123`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of TagValues to return in the response. The server
        #     allows a maximum of 300 TagValues to return. If unspecified, the server
        #     will use 100 as the default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A pagination token returned from a previous call to `ListTagValues`
        #     that indicates where this listing should continue from.
        class ListTagValuesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The ListTagValues response.
        # @!attribute [rw] tag_values
        #   @return [::Array<::Google::Cloud::ResourceManager::V3::TagValue>]
        #     A possibly paginated list of TagValues that are direct descendants of
        #     the specified parent TagKey.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A pagination token returned from a previous call to `ListTagValues`
        #     that indicates from where listing should continue. This is currently not
        #     used, but the server may at any point start supplying a valid token.
        class ListTagValuesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for getting a TagValue.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name for TagValue to be fetched in the format `tagValues/456`.
        class GetTagValueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for creating a TagValue.
        # @!attribute [rw] tag_value
        #   @return [::Google::Cloud::ResourceManager::V3::TagValue]
        #     Required. The TagValue to be created. Only fields `short_name`, `description`,
        #     and `parent` are considered during the creation request.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Set as true to perform the validations necessary for creating the resource,
        #     but not actually perform the action.
        class CreateTagValueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for creating a TagValue.
        class CreateTagValueMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for updating a TagValue.
        # @!attribute [rw] tag_value
        #   @return [::Google::Cloud::ResourceManager::V3::TagValue]
        #     Required. The new definition of the TagValue. Only fields `description` and `etag`
        #     fields can be updated by this request. If the `etag` field is nonempty, it
        #     must match the `etag` field of the existing ControlGroup. Otherwise,
        #     `FAILED_PRECONDITION` will be returned.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Fields to be updated.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. True to perform validations necessary for updating the resource, but not
        #     actually perform the action.
        class UpdateTagValueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for updating a TagValue.
        class UpdateTagValueMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for deleting a TagValue.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name for TagValue to be deleted in the format tagValues/456.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Set as true to perform the validations necessary for deletion, but not
        #     actually perform the action.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. The etag known to the client for the expected state of the TagValue. This
        #     is to be used for optimistic concurrency.
        class DeleteTagValueRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for deleting a TagValue.
        class DeleteTagValueMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
