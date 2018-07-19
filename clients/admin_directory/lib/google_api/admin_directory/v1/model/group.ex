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

defmodule GoogleApi.AdminDirectory.V1.Model.Group do
  @moduledoc """
  JSON template for Group resource in Directory API.

  ## Attributes

  - adminCreated (boolean()): Is the group created by admin (Read-only) * Defaults to: `null`.
  - aliases ([String.t]): List of aliases (Read-only) Defaults to: `null`.
  - description (String.t): Description of the group Defaults to: `null`.
  - directMembersCount (String.t): Group direct members count Defaults to: `null`.
  - email (String.t): Email of Group Defaults to: `null`.
  - etag (String.t): ETag of the resource. Defaults to: `null`.
  - id (String.t): Unique identifier of Group (Read-only) Defaults to: `null`.
  - kind (String.t): Kind of resource this is. Defaults to: `null`.
  - name (String.t): Group name Defaults to: `null`.
  - nonEditableAliases ([String.t]): List of non editable aliases (Read-only) Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          adminCreated: any(),
          aliases: any(),
          description: any(),
          directMembersCount: any(),
          email: any(),
          etag: any(),
          id: any(),
          kind: any(),
          name: any(),
          nonEditableAliases: any()
        }

  defstruct [
    :adminCreated,
    :aliases,
    :description,
    :directMembersCount,
    :email,
    :etag,
    :id,
    :kind,
    :name,
    :nonEditableAliases
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdminDirectory.V1.Model.Group do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdminDirectory.V1.Model.Group do
  def encode(value, options) do
    GoogleApi.AdminDirectory.V1.Deserializer.serialize_non_nil(value, options)
  end
end
