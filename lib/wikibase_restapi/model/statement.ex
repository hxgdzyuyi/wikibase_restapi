# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WikibaseRESTAPI.Model.Statement do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :rank,
    :property,
    :value,
    :qualifiers,
    :references
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :rank => String.t | nil,
    :property => WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfProperty.t | nil,
    :value => WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfValue.t | nil,
    :qualifiers => [WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfQualifiersInner.t] | nil,
    :references => [WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfReferencesInner.t] | nil
  }

  alias WikibaseRESTAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:property, :struct, WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfProperty)
     |> Deserializer.deserialize(:value, :struct, WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfValue)
     |> Deserializer.deserialize(:qualifiers, :list, WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfQualifiersInner)
     |> Deserializer.deserialize(:references, :list, WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInnerAllOfReferencesInner)
  end
end

