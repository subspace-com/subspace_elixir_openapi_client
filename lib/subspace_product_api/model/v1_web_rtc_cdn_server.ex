# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SubspaceProductAPI.Model.V1WebRtcCdnServer do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"username",
    :"credential",
    :"urls"
  ]

  @type t :: %__MODULE__{
    :"username" => String.t | nil,
    :"credential" => String.t | nil,
    :"urls" => String.t | nil
  }
end

defimpl Poison.Decoder, for: SubspaceProductAPI.Model.V1WebRtcCdnServer do
  def decode(value, _options) do
    value
  end
end
