# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WikibaseRESTAPI.Model.Qualifier do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :property,
    :value
  ]

  @type t :: %__MODULE__{
    :property => WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfProperty.t | nil,
    :value => WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfValue.t | nil
  }

  alias WikibaseRESTAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:property, :struct, WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfProperty)
     |> Deserializer.deserialize(:value, :struct, WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfValue)
  end
end

