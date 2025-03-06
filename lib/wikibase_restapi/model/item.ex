# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WikibaseRESTAPI.Model.Item do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :type,
    :labels,
    :descriptions,
    :aliases,
    :sitelinks,
    :statements
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :type => String.t | nil,
    :labels => %{optional(String.t) => String.t} | nil,
    :descriptions => %{optional(String.t) => String.t} | nil,
    :aliases => %{optional(String.t) => [String.t]} | nil,
    :sitelinks => %{optional(String.t) => WikibaseRESTAPI.Model.AddItemRequestAllOfItemSitelinksValue.t} | nil,
    :statements => %{optional(String.t) => [WikibaseRESTAPI.Model.AddItemRequestAllOfItemStatementsValueInner.t]} | nil
  }

  alias WikibaseRESTAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:sitelinks, :map, WikibaseRESTAPI.Model.AddItemRequestAllOfItemSitelinksValue)
  end
end

