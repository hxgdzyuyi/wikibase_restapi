# NOTE: This file is auto generated by OpenAPI Generator 7.13.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WikibaseRESTAPI.Model.AddItem400Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :code,
    :message,
    :context
  ]

  @type t :: %__MODULE__{
    :code => String.t,
    :message => String.t,
    :context => map() | nil
  }

  def decode(value) do
    value
  end
end

