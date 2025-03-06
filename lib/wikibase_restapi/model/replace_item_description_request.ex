# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WikibaseRESTAPI.Model.ReplaceItemDescriptionRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :description,
    :tags,
    :bot,
    :comment
  ]

  @type t :: %__MODULE__{
    :description => String.t,
    :tags => [String.t] | nil,
    :bot => boolean() | nil,
    :comment => String.t | nil
  }

  def decode(value) do
    value
  end
end

