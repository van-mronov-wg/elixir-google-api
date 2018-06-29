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

defmodule GoogleApi.Monitoring.V3.Model.MonitoredResourceMetadata do
  @moduledoc """
  Auxiliary metadata for a MonitoredResource object. MonitoredResource objects contain the minimum set of information to uniquely identify a monitored resource instance. There is some other useful auxiliary metadata. Google Stackdriver Monitoring &amp; Logging uses an ingestion pipeline to extract metadata for cloud resources of all types , and stores the metadata in this message.

  ## Attributes

  - systemLabels (%{optional(String.t) &#x3D;&gt; String.t}): Output only. Values for predefined system metadata labels. System labels are a kind of metadata extracted by Google Stackdriver. Stackdriver determines what system labels are useful and how to obtain their values. Some examples: \&quot;machine_image\&quot;, \&quot;vpc\&quot;, \&quot;subnet_id\&quot;, \&quot;security_group\&quot;, \&quot;name\&quot;, etc. System label values can be only strings, Boolean values, or a list of strings. For example: { \&quot;name\&quot;: \&quot;my-test-instance\&quot;,   \&quot;security_group\&quot;: [\&quot;a\&quot;, \&quot;b\&quot;, \&quot;c\&quot;],   \&quot;spot_instance\&quot;: false }  Defaults to: `null`.
  - userLabels (%{optional(String.t) &#x3D;&gt; String.t}): Output only. A map of user-defined metadata labels. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :systemLabels => map(),
          :userLabels => map()
        }

  field(:systemLabels, type: :map)
  field(:userLabels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.MonitoredResourceMetadata do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.MonitoredResourceMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.MonitoredResourceMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
