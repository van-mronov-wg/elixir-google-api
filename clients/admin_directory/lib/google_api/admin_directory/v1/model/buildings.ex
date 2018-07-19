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

defmodule GoogleApi.AdminDirectory.V1.Model.Buildings do
  @moduledoc """
  JSON template for Building List Response object in Directory API.

  ## Attributes

  - buildings ([Building]): The Buildings in this page of results. Defaults to: `null`.
  - etag (String.t): ETag of the resource. Defaults to: `null`.
  - kind (String.t): Kind of resource this is. Defaults to: `null`.
  - nextPageToken (String.t): The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          buildings: list(GoogleApi.AdminDirectory.V1.Model.Building.t()),
          etag: any(),
          kind: any(),
          nextPageToken: any()
        }

  defstruct [
    :buildings,
    :etag,
    :kind,
    :nextPageToken
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdminDirectory.V1.Model.Buildings do
  import GoogleApi.AdminDirectory.V1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:buildings, :list, GoogleApi.AdminDirectory.V1.Model.Building, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdminDirectory.V1.Model.Buildings do
  def encode(value, options) do
    GoogleApi.AdminDirectory.V1.Deserializer.serialize_non_nil(value, options)
  end
end