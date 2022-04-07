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


module Google
  module Cloud
    module SecurityCenter
      module V1
        # Security Command Center finding.
        #
        # A finding is a record of assessment data like security, risk, health, or
        # privacy, that is ingested into Security Command Center for presentation,
        # notification, analysis, policy testing, and enforcement. For example, a
        # cross-site scripting (XSS) vulnerability in an App Engine application is a
        # finding.
        # @!attribute [rw] name
        #   @return [::String]
        #     The relative resource name of this finding. See:
        #     https://cloud.google.com/apis/design/resource_names#relative_resource_name
        #     Example:
        #     "organizations/\\{organization_id}/sources/\\{source_id}/findings/\\{finding_id}"
        # @!attribute [rw] parent
        #   @return [::String]
        #     The relative resource name of the source the finding belongs to. See:
        #     https://cloud.google.com/apis/design/resource_names#relative_resource_name
        #     This field is immutable after creation time.
        #     For example:
        #     "organizations/\\{organization_id}/sources/\\{source_id}"
        # @!attribute [rw] resource_name
        #   @return [::String]
        #     For findings on Google Cloud resources, the full resource
        #     name of the Google Cloud resource this finding is for. See:
        #     https://cloud.google.com/apis/design/resource_names#full_resource_name
        #     When the finding is for a non-Google Cloud resource, the resourceName can
        #     be a customer or partner defined string. This field is immutable after
        #     creation time.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::SecurityCenter::V1::Finding::State]
        #     The state of the finding.
        # @!attribute [rw] category
        #   @return [::String]
        #     The additional taxonomy group within findings from a given source.
        #     This field is immutable after creation time.
        #     Example: "XSS_FLASH_INJECTION"
        # @!attribute [rw] external_uri
        #   @return [::String]
        #     The URI that, if available, points to a web page outside of Security
        #     Command Center where additional information about the finding can be found.
        #     This field is guaranteed to be either empty or a well formed URL.
        # @!attribute [rw] source_properties
        #   @return [::Google::Protobuf::Map{::String => ::Google::Protobuf::Value}]
        #     Source specific properties. These properties are managed by the source
        #     that writes the finding. The key names in the source_properties map must be
        #     between 1 and 255 characters, and must start with a letter and contain
        #     alphanumeric characters or underscores only.
        # @!attribute [r] security_marks
        #   @return [::Google::Cloud::SecurityCenter::V1::SecurityMarks]
        #     Output only. User specified security marks. These marks are entirely
        #     managed by the user and come from the SecurityMarks resource that belongs
        #     to the finding.
        # @!attribute [rw] event_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time the finding was first detected. If an existing finding is updated,
        #     then this is the time the update occurred.
        #     For example, if the finding represents an open firewall, this property
        #     captures the time the detector believes the firewall became open. The
        #     accuracy is determined by the detector. If the finding is later resolved,
        #     then this time reflects when the finding was resolved. This must not
        #     be set to a value greater than the current timestamp.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time at which the finding was created in Security Command Center.
        # @!attribute [rw] severity
        #   @return [::Google::Cloud::SecurityCenter::V1::Finding::Severity]
        #     The severity of the finding. This field is managed by the source that
        #     writes the finding.
        # @!attribute [rw] canonical_name
        #   @return [::String]
        #     The canonical name of the finding. It's either
        #     "organizations/\\{organization_id}/sources/\\{source_id}/findings/\\{finding_id}",
        #     "folders/\\{folder_id}/sources/\\{source_id}/findings/\\{finding_id}" or
        #     "projects/\\{project_number}/sources/\\{source_id}/findings/\\{finding_id}",
        #     depending on the closest CRM ancestor of the resource associated with the
        #     finding.
        # @!attribute [rw] mute
        #   @return [::Google::Cloud::SecurityCenter::V1::Finding::Mute]
        #     Indicates the mute state of a finding (either muted, unmuted
        #     or undefined). Unlike other attributes of a finding, a finding provider
        #     shouldn't set the value of mute.
        # @!attribute [rw] finding_class
        #   @return [::Google::Cloud::SecurityCenter::V1::Finding::FindingClass]
        #     The class of the finding.
        # @!attribute [rw] indicator
        #   @return [::Google::Cloud::SecurityCenter::V1::Indicator]
        #     Represents what's commonly known as an Indicator of compromise (IoC) in
        #     computer forensics. This is an artifact observed on a network or in an
        #     operating system that, with high confidence, indicates a computer
        #     intrusion.
        #     Reference: https://en.wikipedia.org/wiki/Indicator_of_compromise
        # @!attribute [rw] vulnerability
        #   @return [::Google::Cloud::SecurityCenter::V1::Vulnerability]
        #     Represents vulnerability specific fields like cve, cvss scores etc.
        #     CVE stands for Common Vulnerabilities and Exposures
        #     (https://cve.mitre.org/about/)
        # @!attribute [r] mute_update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The most recent time this finding was muted or unmuted.
        # @!attribute [r] external_systems
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::SecurityCenter::V1::ExternalSystem}]
        #     Output only. Third party SIEM/SOAR fields within SCC, contains external system
        #     information and external system finding fields.
        # @!attribute [rw] mitre_attack
        #   @return [::Google::Cloud::SecurityCenter::V1::MitreAttack]
        #     MITRE ATT&CK tactics and techniques related to this finding.
        #     See: https://attack.mitre.org
        # @!attribute [rw] access
        #   @return [::Google::Cloud::SecurityCenter::V1::Access]
        #     Access details associated to the Finding, such as more information on the
        #     caller, which method was accessed, from where, etc.
        # @!attribute [rw] mute_initiator
        #   @return [::String]
        #     First known as mute_annotation. Records additional information about the
        #     mute operation e.g. mute config that muted the finding, user who muted the
        #     finding, etc. Unlike other attributes of a finding, a finding provider
        #     shouldn't set the value of mute.
        # @!attribute [rw] iam_bindings
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::IamBinding>]
        #     Represents IAM bindings associated with the Finding.
        class Finding
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Protobuf::Value]
          class SourcePropertiesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::SecurityCenter::V1::ExternalSystem]
          class ExternalSystemsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The state of the finding.
          module State
            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # The finding requires attention and has not been addressed yet.
            ACTIVE = 1

            # The finding has been fixed, triaged as a non-issue or otherwise addressed
            # and is no longer active.
            INACTIVE = 2
          end

          # The severity of the finding.
          module Severity
            # This value is used for findings when a source doesn't write a severity
            # value.
            SEVERITY_UNSPECIFIED = 0

            # Vulnerability:
            # A critical vulnerability is easily discoverable by an external actor,
            # exploitable, and results in the direct ability to execute arbitrary code,
            # exfiltrate data, and otherwise gain additional access and privileges to
            # cloud resources and workloads. Examples include publicly accessible
            # unprotected user data, public SSH access with weak or no passwords, etc.
            #
            # Threat:
            # Indicates a threat that is able to access, modify, or delete data or
            # execute unauthorized code within existing resources.
            CRITICAL = 1

            # Vulnerability:
            # A high risk vulnerability can be easily discovered and exploited in
            # combination with other vulnerabilities in order to gain direct access and
            # the ability to execute arbitrary code, exfiltrate data, and otherwise
            # gain additional access and privileges to cloud resources and workloads.
            # An example is a database with weak or no passwords that is only
            # accessible internally. This database could easily be compromised by an
            # actor that had access to the internal network.
            #
            # Threat:
            # Indicates a threat that is able to create new computational resources in
            # an environment but not able to access data or execute code in existing
            # resources.
            HIGH = 2

            # Vulnerability:
            # A medium risk vulnerability could be used by an actor to gain access to
            # resources or privileges that enable them to eventually (through multiple
            # steps or a complex exploit) gain access and the ability to execute
            # arbitrary code or exfiltrate data. An example is a service account with
            # access to more projects than it should have. If an actor gains access to
            # the service account, they could potentially use that access to manipulate
            # a project the service account was not intended to.
            #
            # Threat:
            # Indicates a threat that is able to cause operational impact but may not
            # access data or execute unauthorized code.
            MEDIUM = 3

            # Vulnerability:
            # A low risk vulnerability hampers a security organization's ability to
            # detect vulnerabilities or active threats in their deployment, or prevents
            # the root cause investigation of security issues. An example is monitoring
            # and logs being disabled for resource configurations and access.
            #
            # Threat:
            # Indicates a threat that has obtained minimal access to an environment but
            # is not able to access data, execute code, or create resources.
            LOW = 4
          end

          # Mute state a finding can be in.
          module Mute
            # Unspecified.
            MUTE_UNSPECIFIED = 0

            # Finding has been muted.
            MUTED = 1

            # Finding has been unmuted.
            UNMUTED = 2

            # Finding has never been muted/unmuted.
            UNDEFINED = 4
          end

          # Represents what kind of Finding it is.
          module FindingClass
            # Unspecified finding class.
            FINDING_CLASS_UNSPECIFIED = 0

            # Describes unwanted or malicious activity.
            THREAT = 1

            # Describes a potential weakness in software that increases risk to
            # Confidentiality & Integrity & Availability.
            VULNERABILITY = 2

            # Describes a potential weakness in cloud resource/asset configuration that
            # increases risk.
            MISCONFIGURATION = 3

            # Describes a security observation that is for informational purposes.
            OBSERVATION = 4

            # Describes an error that prevents some SCC functionality.
            SCC_ERROR = 5
          end
        end
      end
    end
  end
end
