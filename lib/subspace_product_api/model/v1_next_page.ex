# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SubspaceProductAPI.Model.V1NextPage do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"before",
    :"limit"
  ]

  @type t :: %__MODULE__{
    :"before" => String.t | nil,
    :"limit" => integer() | nil
  }
end

defimpl Poison.Decoder, for: SubspaceProductAPI.Model.V1NextPage do
  def decode(value, _options) do
    value
  end
end

