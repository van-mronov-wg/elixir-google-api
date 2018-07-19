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

defmodule GoogleApi.Admin.Directory_v1.Api.Privileges do
  @moduledoc """
  API calls for all endpoints tagged `Privileges`.
  """

  alias GoogleApi.Admin.Directory_v1.Connection
  import GoogleApi.Admin.Directory_v1.RequestBuilder

  @doc """
  Retrieves a paginated list of all privileges for a customer.

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - customer (String.t): Immutable ID of the G Suite account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.Privileges{}} on success
  {:error, info} on failure
  """
  @spec directory_privileges_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Privileges.t()} | {:error, Tesla.Env.t()}
  def directory_privileges_list(connection, customer, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    %{}
    |> method(:get)
    |> url("/customer/{customer}/roles/ALL/privileges", %{
      "customer" => URI.encode_www_form(customer)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.Privileges{})
  end
end
