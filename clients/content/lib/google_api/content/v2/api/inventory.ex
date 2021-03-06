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

defmodule GoogleApi.Content.V2.Api.Inventory do
  @moduledoc """
  API calls for all endpoints tagged `Inventory`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Updates price and availability for multiple products or stores in a single request. This operation does not update the expiration date of the products.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to run the request in dry-run mode.
    - :body (InventoryCustomBatchRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.InventoryCustomBatchResponse{}} on success
  {:error, info} on failure
  """
  @spec content_inventory_custombatch(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.InventoryCustomBatchResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_inventory_custombatch(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/inventory/batch")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.InventoryCustomBatchResponse{})
  end

  @doc """
  Updates price and availability of a product in your Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that contains the product. This account cannot be a multi-client account.
  - store_code (String.t): The code of the store for which to update price and availability. Use online to update price and availability of an online product.
  - product_id (String.t): The REST id of the product for which to update price and availability.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :dryRun (boolean()): Flag to run the request in dry-run mode.
    - :body (InventorySetRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.InventorySetResponse{}} on success
  {:error, info} on failure
  """
  @spec content_inventory_set(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.InventorySetResponse.t()} | {:error, Tesla.Env.t()}
  def content_inventory_set(connection, merchant_id, store_code, product_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :dryRun => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{merchantId}/inventory/{storeCode}/products/{productId}", %{
        "merchantId" => URI.encode_www_form(merchant_id),
        "storeCode" => URI.encode_www_form(store_code),
        "productId" => URI.encode_www_form(product_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Content.V2.Model.InventorySetResponse{})
  end
end
