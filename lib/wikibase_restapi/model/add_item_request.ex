# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WikibaseRESTAPI.Model.AddItemRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :item,
    :tags,
    :bot,
    :comment
  ]

  @type t :: %__MODULE__{
    :item => WikibaseRESTAPI.Model.AddItemRequestAllOfItem.t,
    :tags => [String.t] | nil,
    :bot => boolean() | nil,
    :comment => String.t | nil
  }

  alias WikibaseRESTAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:item, :struct, WikibaseRESTAPI.Model.AddItemRequestAllOfItem)
  end
end

