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

defmodule GoogleApi.Admin.Directory_v1.Api.Mobiledevices do
  @moduledoc """
  API calls for all endpoints tagged `Mobiledevices`.
  """

  alias GoogleApi.Admin.Directory_v1.Connection
  import GoogleApi.Admin.Directory_v1.RequestBuilder

  @doc """
  Take action on Mobile Device

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - customer_id (String.t): Immutable ID of the G Suite account
  - resource_id (String.t): Immutable ID of Mobile Device
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (MobileDeviceAction): 

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec directory_mobiledevices_action(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def directory_mobiledevices_action(connection, customer_id, resource_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/customer/{customerId}/devices/mobile/{resourceId}/action", %{
      "customerId" => URI.encode_www_form(customer_id),
      "resourceId" => URI.encode_www_form(resource_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete Mobile Device

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - customer_id (String.t): Immutable ID of the G Suite account
  - resource_id (String.t): Immutable ID of Mobile Device
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec directory_mobiledevices_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def directory_mobiledevices_delete(connection, customer_id, resource_id, opts \\ []) do
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
    |> method(:delete)
    |> url("/customer/{customerId}/devices/mobile/{resourceId}", %{
      "customerId" => URI.encode_www_form(customer_id),
      "resourceId" => URI.encode_www_form(resource_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieve Mobile Device

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - customer_id (String.t): Immutable ID of the G Suite account
  - resource_id (String.t): Immutable ID of Mobile Device
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :projection (String.t): Restrict information returned to a set of selected fields.

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.MobileDevice{}} on success
  {:error, info} on failure
  """
  @spec directory_mobiledevices_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.MobileDevice.t()} | {:error, Tesla.Env.t()}
  def directory_mobiledevices_get(connection, customer_id, resource_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :projection => :query
    }

    %{}
    |> method(:get)
    |> url("/customer/{customerId}/devices/mobile/{resourceId}", %{
      "customerId" => URI.encode_www_form(customer_id),
      "resourceId" => URI.encode_www_form(resource_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.MobileDevice{})
  end

  @doc """
  Retrieve all Mobile Devices of a customer (paginated)

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - customer_id (String.t): Immutable ID of the G Suite account
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of results to return. Default is 100
    - :orderBy (String.t): Column to use for sorting results
    - :pageToken (String.t): Token to specify next page in the list
    - :projection (String.t): Restrict information returned to a set of selected fields.
    - :query (String.t): Search string in the format given at http://support.google.com/a/bin/answer.py?answer&#x3D;1408863#search
    - :sortOrder (String.t): Whether to return results in ascending or descending order. Only of use when orderBy is also used

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.MobileDevices{}} on success
  {:error, info} on failure
  """
  @spec directory_mobiledevices_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.MobileDevices.t()} | {:error, Tesla.Env.t()}
  def directory_mobiledevices_list(connection, customer_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query,
      :projection => :query,
      :query => :query,
      :sortOrder => :query
    }

    %{}
    |> method(:get)
    |> url("/customer/{customerId}/devices/mobile", %{
      "customerId" => URI.encode_www_form(customer_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.MobileDevices{})
  end
end
