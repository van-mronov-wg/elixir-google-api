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

defmodule GoogleApi.AdminDirectory.V1.Model.UserPhone do
  @moduledoc """
  JSON template for a phone entry.

  ## Attributes

  - customType (String.t): Custom Type. Defaults to: `null`.
  - primary (boolean()): If this is user&#39;s primary phone or not. Defaults to: `null`.
  - type (String.t): Each entry can have a type which indicates standard types of that entry. For example phone could be of home_fax, work, mobile etc. In addition to the standard type, an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value. Defaults to: `null`.
  - value (String.t): Phone number. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          customType: any(),
          primary: any(),
          type: any(),
          value: any()
        }

  defstruct [
    :customType,
    :primary,
    :type,
    :value
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdminDirectory.V1.Model.UserPhone do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdminDirectory.V1.Model.UserPhone do
  def encode(value, options) do
    GoogleApi.AdminDirectory.V1.Deserializer.serialize_non_nil(value, options)
  end
end