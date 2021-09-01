# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SubspaceProductAPI.Model.V1UpdateSipTeleport do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"destination",
    :"status"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"destination" => String.t,
    :"status" => SubspaceProductAPI.Model.V1SipTeleportStatus.t
  }
end

defimpl Poison.Decoder, for: SubspaceProductAPI.Model.V1UpdateSipTeleport do
  import SubspaceProductAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"status", :struct, SubspaceProductAPI.Model.V1SipTeleportStatus, options)
  end
end

