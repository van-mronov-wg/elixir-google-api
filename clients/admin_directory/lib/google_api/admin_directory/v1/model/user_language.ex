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

defmodule GoogleApi.AdminDirectory.V1.Model.UserLanguage do
  @moduledoc """
  JSON template for a language entry.

  ## Attributes

  - customLanguage (String.t): Other language. User can provide own language name if there is no corresponding Google III language code. If this is set LanguageCode can&#39;t be set Defaults to: `null`.
  - languageCode (String.t): Language Code. Should be used for storing Google III LanguageCode string representation for language. Illegal values cause SchemaException. Defaults to: `null`.
  """

  @type t :: %__MODULE__{
          customLanguage: any(),
          languageCode: any()
        }

  defstruct [
    :customLanguage,
    :languageCode
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdminDirectory.V1.Model.UserLanguage do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdminDirectory.V1.Model.UserLanguage do
  def encode(value, options) do
    GoogleApi.AdminDirectory.V1.Deserializer.serialize_non_nil(value, options)
  end
end
