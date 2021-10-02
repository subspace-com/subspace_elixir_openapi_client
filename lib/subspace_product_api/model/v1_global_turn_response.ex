# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SubspaceProductAPI.Model.V1GlobalTurnResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ice_servers"
  ]

  @type t :: %__MODULE__{
    :"ice_servers" => [SubspaceProductAPI.Model.V1GlobalTurnServer.t] | nil
  }
end

defimpl Poison.Decoder, for: SubspaceProductAPI.Model.V1GlobalTurnResponse do
  import SubspaceProductAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"ice_servers", :list, SubspaceProductAPI.Model.V1GlobalTurnServer, options)
  end
end

