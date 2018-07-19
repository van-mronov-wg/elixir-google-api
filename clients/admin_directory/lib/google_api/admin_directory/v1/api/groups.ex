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

defmodule GoogleApi.AdminDirectory.V1.Api.Groups do
  @moduledoc """
  API calls for all endpoints tagged `Groups`.
  """

  alias GoogleApi.AdminDirectory.V1.Connection
  import GoogleApi.AdminDirectory.V1.RequestBuilder

  @doc """
  Remove a alias for the group

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - group_key (String.t): Email or immutable ID of the group
  - alias (String.t): The alias to be removed
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
  @spec directory_groups_aliases_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def directory_groups_aliases_delete(connection, group_key, alias, opts \\ []) do
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
    |> url("/groups/{groupKey}/aliases/{alias}", %{
      "groupKey" => URI.encode_www_form(group_key),
      "alias" => URI.encode_www_form(alias)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Add a alias for the group

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - group_key (String.t): Email or immutable ID of the group
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Alias): 

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.Alias{}} on success
  {:error, info} on failure
  """
  @spec directory_groups_aliases_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.Alias.t()} | {:error, Tesla.Env.t()}
  def directory_groups_aliases_insert(connection, group_key, opts \\ []) do
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
    |> url("/groups/{groupKey}/aliases", %{
      "groupKey" => URI.encode_www_form(group_key)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.Alias{})
  end

  @doc """
  List all aliases for a group

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - group_key (String.t): Email or immutable ID of the group
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.Aliases{}} on success
  {:error, info} on failure
  """
  @spec directory_groups_aliases_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.Aliases.t()} | {:error, Tesla.Env.t()}
  def directory_groups_aliases_list(connection, group_key, opts \\ []) do
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
    |> url("/groups/{groupKey}/aliases", %{
      "groupKey" => URI.encode_www_form(group_key)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.Aliases{})
  end

  @doc """
  Delete Group

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - group_key (String.t): Email or immutable ID of the group
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
  @spec directory_groups_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def directory_groups_delete(connection, group_key, opts \\ []) do
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
    |> url("/groups/{groupKey}", %{
      "groupKey" => URI.encode_www_form(group_key)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieve Group

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - group_key (String.t): Email or immutable ID of the group
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.Group{}} on success
  {:error, info} on failure
  """
  @spec directory_groups_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.Group.t()} | {:error, Tesla.Env.t()}
  def directory_groups_get(connection, group_key, opts \\ []) do
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
    |> url("/groups/{groupKey}", %{
      "groupKey" => URI.encode_www_form(group_key)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.Group{})
  end

  @doc """
  Create Group

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Group): 

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.Group{}} on success
  {:error, info} on failure
  """
  @spec directory_groups_insert(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.Group.t()} | {:error, Tesla.Env.t()}
  def directory_groups_insert(connection, opts \\ []) do
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
    |> url("/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.Group{})
  end

  @doc """
  Retrieve all groups of a domain or of a user given a userKey (paginated)

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :customer (String.t): Immutable ID of the G Suite account. In case of multi-domain, to fetch all groups for a customer, fill this field instead of domain.
    - :domain (String.t): Name of the domain. Fill this field to get groups from only this domain. To return all groups in a multi-domain fill customer field instead.
    - :maxResults (integer()): Maximum number of results to return. Default is 200
    - :orderBy (String.t): Column to use for sorting results
    - :pageToken (String.t): Token to specify next page in the list
    - :query (String.t): Query string search. Should be of the form \&quot;\&quot;. Complete documentation is at https://developers.google.com/admin-sdk/directory/v1/guides/search-groups
    - :sortOrder (String.t): Whether to return results in ascending or descending order. Only of use when orderBy is also used
    - :userKey (String.t): Email or immutable Id of the user if only those groups are to be listed, the given user is a member of. If Id, it should match with id of user object

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec directory_groups_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.Groups.t()} | {:error, Tesla.Env.t()}
  def directory_groups_list(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :customer => :query,
      :domain => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query,
      :query => :query,
      :sortOrder => :query,
      :userKey => :query
    }

    %{}
    |> method(:get)
    |> url("/groups")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.Groups{})
  end

  @doc """
  Update Group. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - group_key (String.t): Email or immutable ID of the group. If ID, it should match with id of group object
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Group): 

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.Group{}} on success
  {:error, info} on failure
  """
  @spec directory_groups_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.Group.t()} | {:error, Tesla.Env.t()}
  def directory_groups_patch(connection, group_key, opts \\ []) do
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
    |> url("/groups/{groupKey}", %{
      "groupKey" => URI.encode_www_form(group_key)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.Group{})
  end

  @doc """
  Update Group

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - group_key (String.t): Email or immutable ID of the group. If ID, it should match with id of group object
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (Group): 

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.Group{}} on success
  {:error, info} on failure
  """
  @spec directory_groups_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.Group.t()} | {:error, Tesla.Env.t()}
  def directory_groups_update(connection, group_key, opts \\ []) do
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
    |> url("/groups/{groupKey}", %{
      "groupKey" => URI.encode_www_form(group_key)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.Group{})
  end
end