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

defmodule GoogleApi.AdminDirectory.V1.Model.DomainAliases do
  @moduledoc """
  JSON response template to list domain aliases in Directory API.

  ## Attributes

  - domainAliases ([DomainAlias]): List of domain alias objects. Defaults to: `null`.
  - etag (String.t): ETag of the resource. Defaults to: `null`.
  - kind (String.t): Kind of resource this is. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          domainAliases: list(GoogleApi.AdminDirectory.V1.Model.DomainAlias.t()),
          etag: any(),
          kind: any()
        }

  defstruct [
    :domainAliases,
    :etag,
    :kind
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdminDirectory.V1.Model.DomainAliases do
  import GoogleApi.AdminDirectory.V1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:domainAliases, :list, GoogleApi.AdminDirectory.V1.Model.DomainAlias, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdminDirectory.V1.Model.DomainAliases do
  def encode(value, options) do
    GoogleApi.AdminDirectory.V1.Deserializer.serialize_non_nil(value, options)
  end
end