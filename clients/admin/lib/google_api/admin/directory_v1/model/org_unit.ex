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

defmodule GoogleApi.Admin.Directory_v1.Model.OrgUnit do
  @moduledoc """
  JSON template for Org Unit resource in Directory API.

  ## Attributes

  - blockInheritance (boolean()): Should block inheritance Defaults to: `null`.
  - description (String.t): Description of OrgUnit Defaults to: `null`.
  - etag (String.t): ETag of the resource. Defaults to: `null`.
  - kind (String.t): Kind of resource this is. Defaults to: `null`.
  - name (String.t): Name of OrgUnit Defaults to: `null`.
  - orgUnitId (String.t): Id of OrgUnit Defaults to: `null`.
  - orgUnitPath (String.t): Path of OrgUnit Defaults to: `null`.
  - parentOrgUnitId (String.t): Id of parent OrgUnit Defaults to: `null`.
  - parentOrgUnitPath (String.t): Path of parent OrgUnit Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          blockInheritance: any(),
          description: any(),
          etag: any(),
          kind: any(),
          name: any(),
          orgUnitId: any(),
          orgUnitPath: any(),
          parentOrgUnitId: any(),
          parentOrgUnitPath: any()
        }

  defstruct [
    :blockInheritance,
    :description,
    :etag,
    :kind,
    :name,
    :orgUnitId,
    :orgUnitPath,
    :parentOrgUnitId,
    :parentOrgUnitPath
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.OrgUnit do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.OrgUnit do
  def encode(value, options) do
    GoogleApi.Admin.Directory_v1.Deserializer.serialize_non_nil(value, options)
  end
end
