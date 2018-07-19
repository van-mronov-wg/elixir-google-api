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

defmodule GoogleApi.Admin.Directory_v1.Api.Roles do
  @moduledoc """
  API calls for all endpoints tagged `Roles`.
  """

  alias GoogleApi.Admin.Directory_v1.Connection
  import GoogleApi.Admin.Directory_v1.RequestBuilder

  @doc """
  Deletes a role.

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - customer (String.t): Immutable ID of the G Suite account.
  - role_id (String.t): Immutable ID of the role.
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
  @spec directory_roles_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def directory_roles_delete(connection, customer, role_id, opts \\ []) do
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
    |> url("/customer/{customer}/roles/{roleId}", %{
      "customer" => URI.encode_www_form(customer),
      "roleId" => URI.encode_www_form(role_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves a role.

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - customer (String.t): Immutable ID of the G Suite account.
  - role_id (String.t): Immutable ID of the role.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.Role{}} on success
  {:error, info} on failure
  """
  @spec directory_roles_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def directory_roles_get(connection, customer, role_id, opts \\ []) do
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
    |> url("/customer/{customer}/roles/{roleId}", %{
      "customer" => URI.encode_www_form(customer),
      "roleId" => URI.encode_www_form(role_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.Role{})
  end

  @doc """
  Creates a role.

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
    - :body (Role): 

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.Role{}} on success
  {:error, info} on failure
  """
  @spec directory_roles_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def directory_roles_insert(connection, customer, opts \\ []) do
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
    |> url("/customer/{customer}/roles", %{
      "customer" => URI.encode_www_form(customer)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.Role{})
  end

  @doc """
  Retrieves a paginated list of all the roles in a domain.

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
    - :maxResults (integer()): Maximum number of results to return.
    - :pageToken (String.t): Token to specify the next page in the list.

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.Roles{}} on success
  {:error, info} on failure
  """
  @spec directory_roles_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Roles.t()} | {:error, Tesla.Env.t()}
  def directory_roles_list(connection, customer, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    %{}
    |> method(:get)
    |> url("/customer/{customer}/roles", %{
      "customer" => URI.encode_www_form(customer)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.Roles{})
  end

  @doc """
  Updates a role. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - customer (String.t): Immutable ID of the G Suite account.
  - role_id (String.t): Immutable ID of the role.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Role): 

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.Role{}} on success
  {:error, info} on failure
  """
  @spec directory_roles_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def directory_roles_patch(connection, customer, role_id, opts \\ []) do
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
    |> method(:patch)
    |> url("/customer/{customer}/roles/{roleId}", %{
      "customer" => URI.encode_www_form(customer),
      "roleId" => URI.encode_www_form(role_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.Role{})
  end

  @doc """
  Updates a role.

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - customer (String.t): Immutable ID of the G Suite account.
  - role_id (String.t): Immutable ID of the role.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Role): 

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.Role{}} on success
  {:error, info} on failure
  """
  @spec directory_roles_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Role.t()} | {:error, Tesla.Env.t()}
  def directory_roles_update(connection, customer, role_id, opts \\ []) do
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
    |> method(:put)
    |> url("/customer/{customer}/roles/{roleId}", %{
      "customer" => URI.encode_www_form(customer),
      "roleId" => URI.encode_www_form(role_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.Role{})
  end
end
