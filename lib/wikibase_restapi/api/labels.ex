# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WikibaseRESTAPI.Api.Labels do
  @moduledoc """
  API calls for all endpoints tagged `Labels`.
  """

  alias WikibaseRESTAPI.Connection
  import WikibaseRESTAPI.RequestBuilder

  @doc """
  Delete an Item's label in a specific language

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `item_id` (String.t): The ID of the required Item
  - `language_code` (String.t): The requested resource language
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token
    - `:body` (DeleteSitelinkRequest): Edit payload containing edit metadata

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_item_label(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def delete_item_label(connection, item_id, language_code, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers,
      :body => :body
    }

    request =
      %{}
      |> method(:delete)
      |> url("/v1/entities/items/#{item_id}/labels/#{language_code}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {403, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {409, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {429, WikibaseRESTAPI.Model.AddItem400Response},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Delete a Property's label in a specific language

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `property_id` (String.t): The ID of the required Property
  - `language_code` (String.t): The requested resource language
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token
    - `:body` (DeleteSitelinkRequest): Edit payload containing edit metadata

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_property_label(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def delete_property_label(connection, property_id, language_code, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers,
      :body => :body
    }

    request =
      %{}
      |> method(:delete)
      |> url("/v1/entities/properties/#{property_id}/labels/#{language_code}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {403, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {429, WikibaseRESTAPI.Model.AddItem400Response},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Retrieve an Item's label in a specific language

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `item_id` (String.t): The ID of the required Item
  - `language_code` (String.t): The requested resource language
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_item_label(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_item_label(connection, item_id, language_code, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/entities/items/#{item_id}/labels/#{language_code}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {304, false},
      {308, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Retrieve an Item's label in a specific language, with language fallback. If a label is defined in the requested language, the API responds with a 200 status code and includes the label in the response payload. If a label only exists in a fallback language, the API returns a 307 status code and provides the location of the label

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `item_id` (String.t): The ID of the required Item
  - `language_code` (String.t): The requested resource language
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_item_label_with_fallback(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_item_label_with_fallback(connection, item_id, language_code, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/entities/items/#{item_id}/labels_with_language_fallback/#{language_code}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {304, false},
      {307, false},
      {308, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Retrieve an Item's labels

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `item_id` (String.t): The ID of the required Item
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_item_labels(Tesla.Env.client, String.t, keyword()) :: {:ok, map()} | {:ok, nil} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:error, Tesla.Env.t}
  def get_item_labels(connection, item_id, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/entities/items/#{item_id}/labels")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {304, false},
      {308, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Retrieve a Property's label in a specific language

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `property_id` (String.t): The ID of the required Property
  - `language_code` (String.t): The requested resource language
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_property_label(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_property_label(connection, property_id, language_code, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/entities/properties/#{property_id}/labels/#{language_code}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {304, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Retrieve a Property's label in a specific language, with language fallback. If a label is defined in the requested language, the API responds with a 200 status code and includes the label in the response payload. If a label only exists in a fallback language, the API returns a 307 status code and provides the location of the label

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `property_id` (String.t): The ID of the required Property
  - `language_code` (String.t): The requested resource language
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_property_label_with_fallback(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def get_property_label_with_fallback(connection, property_id, language_code, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/entities/properties/#{property_id}/labels_with_language_fallback/#{language_code}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {304, false},
      {307, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Retrieve a Property's labels

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `property_id` (String.t): The ID of the required Property
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_property_labels(Tesla.Env.client, String.t, keyword()) :: {:ok, map()} | {:ok, nil} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:error, Tesla.Env.t}
  def get_property_labels(connection, property_id, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/v1/entities/properties/#{property_id}/labels")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {304, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end

  @doc """
  Change an Item's Labels

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `item_id` (String.t): The ID of the required Item
  - `patch_item_request` (PatchItemRequest): Payload containing a JSON Patch document to be applied to Labels and edit metadata
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec patch_item_labels(Tesla.Env.client, String.t, WikibaseRESTAPI.Model.PatchItemRequest.t, keyword()) :: {:ok, map()} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, nil} | {:error, Tesla.Env.t}
  def patch_item_labels(connection, item_id, patch_item_request, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers,
      :"If-None-Match" => :headers,
      :"If-Unmodified-Since" => :headers
    }

    request =
      %{}
      |> method(:patch)
      |> url("/v1/entities/items/#{item_id}/labels")
      |> add_param(:body, :body, patch_item_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
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

  @doc """
  Change a Property's Labels

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `property_id` (String.t): The ID of the required Property
  - `patch_item_request` (PatchItemRequest): Payload containing a JSON Patch document to be applied to Labels and edit metadata
  - `opts` (keyword): Optional parameters
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date

  ### Returns

  - `{:ok, %{}}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec patch_property_labels(Tesla.Env.client, String.t, WikibaseRESTAPI.Model.PatchItemRequest.t, keyword()) :: {:ok, map()} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, nil} | {:error, Tesla.Env.t}
  def patch_property_labels(connection, property_id, patch_item_request, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers,
      :"If-None-Match" => :headers,
      :"If-Unmodified-Since" => :headers
    }

    request =
      %{}
      |> method(:patch)
      |> url("/v1/entities/properties/#{property_id}/labels")
      |> add_param(:body, :body, patch_item_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
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

  @doc """
  Add / Replace an Item's label in a specific language

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `item_id` (String.t): The ID of the required Item
  - `language_code` (String.t): The requested resource language
  - `replace_item_label_request` (ReplaceItemLabelRequest): Payload containing an Item label in the specified language and edit metadata
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec replace_item_label(Tesla.Env.client, String.t, String.t, WikibaseRESTAPI.Model.ReplaceItemLabelRequest.t, keyword()) :: {:ok, nil} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def replace_item_label(connection, item_id, language_code, replace_item_label_request, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:put)
      |> url("/v1/entities/items/#{item_id}/labels/#{language_code}")
      |> add_param(:body, :body, replace_item_label_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {201, false},
      {304, false},
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

  @doc """
  Add / Replace a Property's label in a specific language

  ### Parameters

  - `connection` (WikibaseRESTAPI.Connection): Connection to server
  - `property_id` (String.t): The ID of the required Property
  - `language_code` (String.t): The requested resource language
  - `replace_item_label_request` (ReplaceItemLabelRequest): Payload containing a Property label in the specified language and edit metadata
  - `opts` (keyword): Optional parameters
    - `:"If-None-Match"` ([String.t]): Conditionally perform the request only if the resource has been modified since the specified entity revision numbers
    - `:"If-Modified-Since"` (String.t): Conditionally perform the request only if the resource has been modified after the specified date
    - `:"If-Match"` ([String.t]): Conditionally perform the request only if the resource has not been modified since one of the specified entity revision numbers
    - `:"If-Unmodified-Since"` (String.t): Conditionally perform the request only if the resource has not been modified after the specified date
    - `:Authorization` (String.t): Make authenticated request using a provided bearer token

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec replace_property_label(Tesla.Env.client, String.t, String.t, WikibaseRESTAPI.Model.ReplaceItemLabelRequest.t, keyword()) :: {:ok, nil} | {:ok, WikibaseRESTAPI.Model.AddItem400Response.t} | {:ok, String.t} | {:error, Tesla.Env.t}
  def replace_property_label(connection, property_id, language_code, replace_item_label_request, opts \\ []) do
    optional_params = %{
      :"If-None-Match" => :headers,
      :"If-Modified-Since" => :headers,
      :"If-Match" => :headers,
      :"If-Unmodified-Since" => :headers,
      :Authorization => :headers
    }

    request =
      %{}
      |> method(:put)
      |> url("/v1/entities/properties/#{property_id}/labels/#{language_code}")
      |> add_param(:body, :body, replace_item_label_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {201, false},
      {304, false},
      {400, WikibaseRESTAPI.Model.AddItem400Response},
      {403, WikibaseRESTAPI.Model.AddItem400Response},
      {404, WikibaseRESTAPI.Model.AddItem400Response},
      {412, false},
      {422, WikibaseRESTAPI.Model.AddItem400Response},
      {429, WikibaseRESTAPI.Model.AddItem400Response},
      {500, WikibaseRESTAPI.Model.AddItem400Response}
    ])
  end
end
