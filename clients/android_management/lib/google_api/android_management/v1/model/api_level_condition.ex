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

defmodule GoogleApi.AndroidManagement.V1.Model.ApiLevelCondition do
  @moduledoc """
  A compliance rule condition which is satisfied if the Android Framework API level on the device doesn&#39;t meet a minimum requirement. There can only be one rule with this type of condition per policy.

  ## Attributes

  - minApiLevel (integer()): The minimum desired Android Framework API level. If the device doesn&#39;t meet the minimum requirement, this condition is satisfied. Must be greater than zero. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :minApiLevel => any()
        }

  field(:minApiLevel)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ApiLevelCondition do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ApiLevelCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ApiLevelCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
