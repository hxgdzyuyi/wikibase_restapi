# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WikibaseRESTAPI.Api.Items do
  @moduledoc """
  API calls for all endpoints tagged `Items`.
  """

  alias WikibaseRESTAPI.Connection
  import WikibaseRESTAPI.RequestBuilder

  @doc """
  Create a Wikibase Item

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `add_item_request` (AddItemRequest): Payload containing a Wikibase Item and edit metadata
  - `opts` (keyword): Optional parameters
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, WikibaseRESTAPI.Model.AddItem201Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec add_item(Tesla.Env.client, WikibaseRESTAPI.Model.AddItemRequest.t, keyword()) :: {:ok, WikibaseRESTAPI.Model.AddItem201Response.t} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:error, Tesla.Env.t}
  def add_item(connection, add_item_request, opts \\ []) do
    optional_params = %{
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:post)
      |> url("/v1/entities/items")
      |> add_param(:body, :body, add_item_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {201, WikibaseRESTAPI.Model.AddItem201Response},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {403, WikibaseRESTAPI.Model.AddItem400Response},
      {422, WikibaseRESTAPI.Model.AddItem400Response},
      {429, WikibaseRESTAPI.Model.AddItem400Response},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Retrieve a single Wikibase Item by ID

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `item_id` (String.t): The ID of the required Item
  - `opts` (keyword): Optional parameters
    - `:_fields` ([String.t]): Comma-separated list of fields to include in each response object.
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, WikibaseRESTAPI.Model.GetItem200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_item(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, WikibaseRESTAPI.Model.GetItem200Response.t} | {:error, Tesla.Env.t}
  def get_item(connection, item_id, opts \\ []) do
    optional_params = %{
      :_fields => :query,
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/entities/items/#{item_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])


    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, WikibaseRESTAPI.Model.GetItem200Response},
      {304, false},
      {308, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Change a single Wikibase Item by ID

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `item_id` (String.t): The ID of the required Item
  - `patch_item_request` (PatchItemRequest): 
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date

  ### Returns

  - `{:ok, WikibaseRESTAPI.Model.GetItem200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec patch_item(Tesla.Env.client, String.t, WikibaseRESTAPI.Model.PatchItemRequest.t, keyword()) :: {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, nil} | {:ok, WikibaseRESTAPI.Model.GetItem200Response.t} | {:error, Tesla.Env.t}
  def patch_item(connection, item_id, patch_item_request, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers,
      :"If-None-Match" => :headers,
      :"If-Unmodified-Since" => :headers
    }

    request =
      %{}
      |> method(:patch)
      |> url("/v1/entities/items/#{item_id}")
      |> add_param(:body, :body, patch_item_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, WikibaseRESTAPI.Model.GetItem200Response},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {403, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {409, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {422, WikibaseRESTAPI.Model.AddItem400Response},
      {429, WikibaseRESTAPI.Model.AddItem400Response},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end
end
