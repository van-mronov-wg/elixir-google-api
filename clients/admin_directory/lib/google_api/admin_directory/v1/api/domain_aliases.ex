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

defmodule GoogleApi.AdminDirectory.V1.Api.DomainAliases do
  @moduledoc """
  API calls for all endpoints tagged `DomainAliases`.
  """

  alias GoogleApi.AdminDirectory.V1.Connection
  import GoogleApi.AdminDirectory.V1.RequestBuilder

  @doc """
  Deletes a Domain Alias of the customer.

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - customer (String.t): Immutable ID of the G Suite account.
  - domain_alias_name (String.t): Name of domain alias to be retrieved.
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
  @spec directory_domain_aliases_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def directory_domain_aliases_delete(connection, customer, domain_alias_name, opts \\ []) do
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
    |> url("/customer/{customer}/domainaliases/{domainAliasName}", %{
      "customer" => URI.encode_www_form(customer),
      "domainAliasName" => URI.encode_www_form(domain_alias_name)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves a domain alias of the customer.

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - customer (String.t): Immutable ID of the G Suite account.
  - domain_alias_name (String.t): Name of domain alias to be retrieved.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.DomainAlias{}} on success
  {:error, info} on failure
  """
  @spec directory_domain_aliases_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.DomainAlias.t()} | {:error, Tesla.Env.t()}
  def directory_domain_aliases_get(connection, customer, domain_alias_name, opts \\ []) do
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
    |> url("/customer/{customer}/domainaliases/{domainAliasName}", %{
      "customer" => URI.encode_www_form(customer),
      "domainAliasName" => URI.encode_www_form(domain_alias_name)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.DomainAlias{})
  end

  @doc """
  Inserts a Domain alias of the customer.

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - customer (String.t): Immutable ID of the G Suite account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (DomainAlias): 

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.DomainAlias{}} on success
  {:error, info} on failure
  """
  @spec directory_domain_aliases_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.DomainAlias.t()} | {:error, Tesla.Env.t()}
  def directory_domain_aliases_insert(connection, customer, opts \\ []) do
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
    |> url("/customer/{customer}/domainaliases", %{
      "customer" => URI.encode_www_form(customer)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.DomainAlias{})
  end

  @doc """
  Lists the domain aliases of the customer.

  ## Parameters

  - connection (GoogleApi.AdminDirectory.V1.Connection): Connection to server
  - customer (String.t): Immutable ID of the G Suite account.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :parentDomainName (String.t): Name of the parent domain for which domain aliases are to be fetched.

  ## Returns

  {:ok, %GoogleApi.AdminDirectory.V1.Model.DomainAliases{}} on success
  {:error, info} on failure
  """
  @spec directory_domain_aliases_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdminDirectory.V1.Model.DomainAliases.t()} | {:error, Tesla.Env.t()}
  def directory_domain_aliases_list(connection, customer, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :parentDomainName => :query
    }

    %{}
    |> method(:get)
    |> url("/customer/{customer}/domainaliases", %{
      "customer" => URI.encode_www_form(customer)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.AdminDirectory.V1.Model.DomainAliases{})
  end
end
