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

defmodule GoogleApi.Genomics.V1.Model.CigarUnit do
  @moduledoc """
  A single CIGAR operation.

  ## Attributes

  - operation (String.t):  Defaults to: `null`.
    - Enum - one of [OPERATION_UNSPECIFIED, ALIGNMENT_MATCH, INSERT, DELETE, SKIP, CLIP_SOFT, CLIP_HARD, PAD, SEQUENCE_MATCH, SEQUENCE_MISMATCH]
  - operationLength (String.t): The number of genomic bases that the operation runs for. Required. Defaults to: `null`.
  - referenceSequence (String.t): &#x60;referenceSequence&#x60; is only used at mismatches (&#x60;SEQUENCE_MISMATCH&#x60;) and deletions (&#x60;DELETE&#x60;). Filling this field replaces SAM&#39;s MD tag. If the relevant information is not available, this field is unset. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :operation => any(),
          :operationLength => any(),
          :referenceSequence => any()
        }

  field(:operation)
  field(:operationLength)
  field(:referenceSequence)
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.CigarUnit do
  def decode(value, options) do
    GoogleApi.Genomics.V1.Model.CigarUnit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.CigarUnit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
