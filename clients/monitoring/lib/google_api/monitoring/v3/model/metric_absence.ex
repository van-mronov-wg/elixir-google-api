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

defmodule GoogleApi.Monitoring.V3.Model.MetricAbsence do
  @moduledoc """
  A condition type that checks that monitored resources are reporting data. The configuration defines a metric and a set of monitored resources. The predicate is considered in violation when a time series for the specified metric of a monitored resource does not include any data in the specified duration.

  ## Attributes

  - aggregations ([Aggregation]): Specifies the alignment of data points in individual time series as well as how to combine the retrieved time series together (such as when aggregating multiple streams on each resource to a single stream for each resource or when aggregating streams across all members of a group of resrouces). Multiple aggregations are applied in the order specified.This field is similar to the one in the MetricService.ListTimeSeries request. It is advisable to use the ListTimeSeries method when debugging this field. Defaults to: `null`.
  - duration (String.t): The amount of time that a time series must fail to report new data to be considered failing. Currently, only values that are a multiple of a minute--e.g. 60, 120, or 300 seconds--are supported. If an invalid value is given, an error will be returned. The Duration.nanos field is ignored. Defaults to: `null`.
  - filter (String.t): A filter that identifies which time series should be compared with the threshold.The filter is similar to the one that is specified in the MetricService.ListTimeSeries request (that call is useful to verify the time series that will be retrieved / processed) and must specify the metric type and optionally may contain restrictions on resource type, resource labels, and metric labels. This field may not exceed 2048 Unicode characters in length. Defaults to: `null`.
  - trigger (Trigger): The number/percent of time series for which the comparison must hold in order for the condition to trigger. If unspecified, then the condition will trigger if the comparison is true for any of the time series that have been identified by filter and aggregations. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregations => list(GoogleApi.Monitoring.V3.Model.Aggregation.t()),
          :duration => any(),
          :filter => any(),
          :trigger => GoogleApi.Monitoring.V3.Model.Trigger.t()
        }

  field(:aggregations, as: GoogleApi.Monitoring.V3.Model.Aggregation, type: :list)
  field(:duration)
  field(:filter)
  field(:trigger, as: GoogleApi.Monitoring.V3.Model.Trigger)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.MetricAbsence do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.MetricAbsence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.MetricAbsence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
