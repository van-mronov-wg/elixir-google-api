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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Result do
  @moduledoc """


  ## Attributes

  - infoTypeStats ([GooglePrivacyDlpV2InfoTypeStats]): Statistics of how many instances of each info type were found during inspect job. Defaults to: `null`.
  - processedBytes (String.t): Total size in bytes that were processed. Defaults to: `null`.
  - totalEstimatedBytes (String.t): Estimate of the number of bytes to process. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :infoTypeStats => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeStats.t()),
          :processedBytes => any(),
          :totalEstimatedBytes => any()
        }

  field(:infoTypeStats, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeStats, type: :list)
  field(:processedBytes)
  field(:totalEstimatedBytes)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Result do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Result.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Result do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end