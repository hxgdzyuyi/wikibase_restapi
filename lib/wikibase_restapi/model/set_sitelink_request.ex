# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WikibaseRESTAPI.Model.SetSitelinkRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :sitelink,
    :tags,
    :bot,
    :comment
  ]

  @type t :: %__MODULE__{
    :sitelink => WikibaseRESTAPI.Model.AddItemRequestAllOfItemSitelinksValue.t,
    :tags => [String.t] | nil,
    :bot => boolean() | nil,
    :comment => String.t | nil
  }

  alias WikibaseRESTAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:sitelink, :struct, WikibaseRESTAPI.Model.AddItemRequestAllOfItemSitelinksValue)
  end
end

