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

defmodule GoogleApi.Admin.Directory_v1.Model.ChromeOsMoveDevicesToOu do
  @moduledoc """
  JSON request template for moving ChromeOs Device to given OU in Directory Devices API.

  ## Attributes

  - deviceIds ([String.t]): ChromeOs Devices to be moved to OU Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          deviceIds: any()
        }

  defstruct [
    :deviceIds
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.ChromeOsMoveDevicesToOu do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.ChromeOsMoveDevicesToOu do
  def encode(value, options) do
    GoogleApi.Admin.Directory_v1.Deserializer.serialize_non_nil(value, options)
  end
end
