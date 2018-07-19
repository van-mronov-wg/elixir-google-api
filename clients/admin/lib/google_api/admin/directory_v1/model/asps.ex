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

defmodule GoogleApi.Admin.Directory_v1.Model.Asps do
  @moduledoc """


  ## Attributes

  - etag (String.t): ETag of the resource. Defaults to: `null`.
  - items ([Asp]): A list of ASP resources. Defaults to: `null`.
  - kind (String.t): The type of the API resource. This is always admin#directory#aspList. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          etag: any(),
          items: list(GoogleApi.Admin.Directory_v1.Model.Asp.t()),
          kind: any()
        }

  defstruct [
    :etag,
    :items,
    :kind
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.Asps do
  import GoogleApi.Admin.Directory_v1.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:items, :list, GoogleApi.Admin.Directory_v1.Model.Asp, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.Asps do
  def encode(value, options) do
    GoogleApi.Admin.Directory_v1.Deserializer.serialize_non_nil(value, options)
  end
end
