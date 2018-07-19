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

defmodule GoogleApi.AdminDirectory.V1.Model.UserGender do
  @moduledoc """


  ## Attributes

  - addressMeAs (String.t): AddressMeAs. A human-readable string containing the proper way to refer to the profile owner by humans, for example \&quot;he/him/his\&quot; or \&quot;they/them/their\&quot;. Defaults to: `null`.
  - customGender (String.t): Custom gender. Defaults to: `null`.
  - type (String.t): Gender. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          addressMeAs: any(),
          customGender: any(),
          type: any()
        }

  defstruct [
    :addressMeAs,
    :customGender,
    :type
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdminDirectory.V1.Model.UserGender do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdminDirectory.V1.Model.UserGender do
  def encode(value, options) do
    GoogleApi.AdminDirectory.V1.Deserializer.serialize_non_nil(value, options)
  end
end
