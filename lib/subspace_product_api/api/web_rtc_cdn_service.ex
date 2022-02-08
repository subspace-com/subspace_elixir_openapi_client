# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SubspaceProductAPI.Api.WebRtcCdnService do
  @moduledoc """
  API calls for all endpoints tagged `WebRtcCdnService`.
  """

  alias SubspaceProductAPI.Connection
  import SubspaceProductAPI.RequestBuilder


  @doc """

  ## Parameters

  - connection (SubspaceProductAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, SubspaceProductAPI.Model.V1WebRtcCdnResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec web_rtc_cdn_service_get_web_rtc_cdn(Tesla.Env.client, keyword()) :: {:ok, SubspaceProductAPI.Model.V1WebRtcCdnResponse.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def web_rtc_cdn_service_get_web_rtc_cdn(connection, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v1/webrtc-cdn")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %SubspaceProductAPI.Model.V1WebRtcCdnResponse{}},
      { 400, %{}},
      { 401, %{}},
      { 402, %{}},
      { 403, %{}},
      { 404, %{}},
      { 429, %{}},
      { :default, %{}}
    ])
  end
end