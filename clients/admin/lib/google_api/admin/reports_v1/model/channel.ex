# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Admin.Reports_v1.Model.Channel do
  @moduledoc """
  An notification channel used to watch for resource changes.

  ## Attributes

  - address (String.t): The address where notifications are delivered for this channel. Defaults to: `null`.
  - expiration (String.t): Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional. Defaults to: `null`.
  - id (String.t): A UUID or similar unique string that identifies this channel. Defaults to: `null`.
  - kind (String.t): Identifies this as a notification channel used to watch for changes to a resource. Value: the fixed string \&quot;api#channel\&quot;. Defaults to: `null`.
  - params (%{optional(String.t) &#x3D;&gt; String.t}): Additional parameters controlling delivery channel behavior. Optional. Defaults to: `null`.
  - payload (boolean()): A Boolean value to indicate whether payload is wanted. Optional. Defaults to: `null`.
  - resourceId (String.t): An opaque ID that identifies the resource being watched on this channel. Stable across different API versions. Defaults to: `null`.
  - resourceUri (String.t): A version-specific identifier for the watched resource. Defaults to: `null`.
  - token (String.t): An arbitrary string delivered to the target address with each notification delivered over this channel. Optional. Defaults to: `null`.
  - type (String.t): The type of delivery mechanism used for this channel. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          address: any(),
          expiration: any(),
          id: any(),
          kind: any(),
          params: any(),
          payload: any(),
          resourceId: any(),
          resourceUri: any(),
          token: any(),
          type: any()
        }

  defstruct [
    :address,
    :expiration,
    :id,
    :kind,
    :params,
    :payload,
    :resourceId,
    :resourceUri,
    :token,
    :type
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.Channel do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.Channel do
  def encode(value, options) do
    GoogleApi.Admin.Reports_v1.Deserializer.serialize_non_nil(value, options)
  end
end
