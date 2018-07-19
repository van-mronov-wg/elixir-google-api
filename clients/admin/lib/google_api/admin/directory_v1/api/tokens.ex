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

defmodule GoogleApi.Admin.Directory_v1.Api.Tokens do
  @moduledoc """
  API calls for all endpoints tagged `Tokens`.
  """

  alias GoogleApi.Admin.Directory_v1.Connection
  import GoogleApi.Admin.Directory_v1.RequestBuilder

  @doc """
  Delete all access tokens issued by a user for an application.

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - user_key (String.t): Identifies the user in the API request. The value can be the user&#39;s primary email address, alias email address, or unique user ID.
  - client_id (String.t): The Client ID of the application the token is issued to.
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
  @spec directory_tokens_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def directory_tokens_delete(connection, user_key, client_id, opts \\ []) do
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
    |> url("/users/{userKey}/tokens/{clientId}", %{
      "userKey" => URI.encode_www_form(user_key),
      "clientId" => URI.encode_www_form(client_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get information about an access token issued by a user.

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - user_key (String.t): Identifies the user in the API request. The value can be the user&#39;s primary email address, alias email address, or unique user ID.
  - client_id (String.t): The Client ID of the application the token is issued to.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.Token{}} on success
  {:error, info} on failure
  """
  @spec directory_tokens_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Token.t()} | {:error, Tesla.Env.t()}
  def directory_tokens_get(connection, user_key, client_id, opts \\ []) do
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
    |> url("/users/{userKey}/tokens/{clientId}", %{
      "userKey" => URI.encode_www_form(user_key),
      "clientId" => URI.encode_www_form(client_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.Token{})
  end

  @doc """
  Returns the set of tokens specified user has issued to 3rd party applications.

  ## Parameters

  - connection (GoogleApi.Admin.Directory_v1.Connection): Connection to server
  - user_key (String.t): Identifies the user in the API request. The value can be the user&#39;s primary email address, alias email address, or unique user ID.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Admin.Directory_v1.Model.Tokens{}} on success
  {:error, info} on failure
  """
  @spec directory_tokens_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Admin.Directory_v1.Model.Tokens.t()} | {:error, Tesla.Env.t()}
  def directory_tokens_list(connection, user_key, opts \\ []) do
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
    |> url("/users/{userKey}/tokens", %{
      "userKey" => URI.encode_www_form(user_key)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Admin.Directory_v1.Model.Tokens{})
  end
end
