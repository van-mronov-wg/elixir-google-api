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

defmodule GoogleApi.AdminDirectory.V1.Model.UserIm do
  @moduledoc """
  JSON template for instant messenger of an user.

  ## Attributes

  - customProtocol (String.t): Custom protocol. Defaults to: `null`.
  - customType (String.t): Custom type. Defaults to: `null`.
  - im (String.t): Instant messenger id. Defaults to: `null`.
  - primary (boolean()): If this is user&#39;s primary im. Only one entry could be marked as primary. Defaults to: `null`.
  - protocol (String.t): Protocol used in the instant messenger. It should be one of the values from ImProtocolTypes map. Similar to type, it can take a CUSTOM value and specify the custom name in customProtocol field. Defaults to: `null`.
  - type (String.t): Each entry can have a type which indicates standard types of that entry. For example instant messengers could be of home, work etc. In addition to the standard type, an entry can have a custom type and can take any value. Such types should have the CUSTOM value as type and also have a customType value. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          customProtocol: any(),
          customType: any(),
          im: any(),
          primary: any(),
          protocol: any(),
          type: any()
        }

  defstruct [
    :customProtocol,
    :customType,
    :im,
    :primary,
    :protocol,
    :type
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdminDirectory.V1.Model.UserIm do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdminDirectory.V1.Model.UserIm do
  def encode(value, options) do
    GoogleApi.AdminDirectory.V1.Deserializer.serialize_non_nil(value, options)
  end
end