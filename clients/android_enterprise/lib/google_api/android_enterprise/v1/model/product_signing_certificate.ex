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

defmodule GoogleApi.AndroidEnterprise.V1.Model.ProductSigningCertificate do
  @moduledoc """


  ## Attributes

  - certificateHashSha1 (String.t): The base64 urlsafe encoded SHA1 hash of the certificate. (This field is deprecated in favor of SHA2-256. It should not be used and may be removed at any time.) Defaults to: `null`.
  - certificateHashSha256 (String.t): The base64 urlsafe encoded SHA2-256 hash of the certificate. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificateHashSha1 => any(),
          :certificateHashSha256 => any()
        }

  field(:certificateHashSha1)
  field(:certificateHashSha256)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductSigningCertificate do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ProductSigningCertificate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ProductSigningCertificate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end