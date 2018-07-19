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

defmodule GoogleApi.AdminDirectory.V1.Model.UserPosixAccount do
  @moduledoc """
  JSON template for a POSIX account entry. Description of the field family: go/fbs-posix.

  ## Attributes

  - accountId (String.t): A POSIX account field identifier. (Read-only) Defaults to: `null`.
  - gecos (String.t): The GECOS (user information) for this account. Defaults to: `null`.
  - gid (String.t): The default group ID. Defaults to: `null`.
  - homeDirectory (String.t): The path to the home directory for this account. Defaults to: `null`.
  - operatingSystemType (String.t): The operating system type for this account. Defaults to: `null`.
  - primary (boolean()): If this is user&#39;s primary account within the SystemId. Defaults to: `null`.
  - shell (String.t): The path to the login shell for this account. Defaults to: `null`.
  - systemId (String.t): System identifier for which account Username or Uid apply to. Defaults to: `null`.
  - uid (String.t): The POSIX compliant user ID. Defaults to: `null`.
  - username (String.t): The username of the account. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          accountId: any(),
          gecos: any(),
          gid: any(),
          homeDirectory: any(),
          operatingSystemType: any(),
          primary: any(),
          shell: any(),
          systemId: any(),
          uid: any(),
          username: any()
        }

  defstruct [
    :accountId,
    :gecos,
    :gid,
    :homeDirectory,
    :operatingSystemType,
    :primary,
    :shell,
    :systemId,
    :uid,
    :username
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdminDirectory.V1.Model.UserPosixAccount do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdminDirectory.V1.Model.UserPosixAccount do
  def encode(value, options) do
    GoogleApi.AdminDirectory.V1.Deserializer.serialize_non_nil(value, options)
  end
end