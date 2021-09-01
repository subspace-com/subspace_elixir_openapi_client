# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule SubspaceProductAPI.Api.SipTeleportService do
  @moduledoc """
  API calls for all endpoints tagged `SipTeleportService`.
  """

  alias SubspaceProductAPI.Connection
  import SubspaceProductAPI.RequestBuilder


  @doc """

  ## Parameters

  - connection (SubspaceProductAPI.Connection): Connection to server
  - v1_create_sip_teleport (V1CreateSipTeleport): Required parameters to create a new SIPTeleport
  - opts (KeywordList): [optional] Optional parameters
    - :idempotency_key (String.t): Value is the returned etag of a get request.  If a retry sends an Idempotency-Key that has been seen before, the existing teleport is returned with the status code of 200
  ## Returns

  {:ok, SubspaceProductAPI.Model.V1SipTeleportResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec sip_teleport_service_create(Tesla.Env.client, SubspaceProductAPI.Model.V1CreateSipTeleport.t, keyword()) :: {:ok, SubspaceProductAPI.Model.V1SipTeleportResponse.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def sip_teleport_service_create(connection, v1_create_sip_teleport, opts \\ []) do
    optional_params = %{
      :"Idempotency-Key" => :headers
    }
    %{}
    |> method(:post)
    |> url("/v1/sip-teleports")
    |> add_param(:body, :body, v1_create_sip_teleport)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %SubspaceProductAPI.Model.V1SipTeleportResponse{}},
      { 400, false},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 429, false},
      { :default, false}
    ])
  end

  @doc """

  ## Parameters

  - connection (SubspaceProductAPI.Connection): Connection to server
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, SubspaceProductAPI.Model.V1SipTeleportResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec sip_teleport_service_delete(Tesla.Env.client, String.t, keyword()) :: {:ok, SubspaceProductAPI.Model.V1SipTeleportResponse.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def sip_teleport_service_delete(connection, id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v1/sip-teleports/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %SubspaceProductAPI.Model.V1SipTeleportResponse{}},
      { 400, false},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 429, false},
      { :default, false}
    ])
  end

  @doc """

  ## Parameters

  - connection (SubspaceProductAPI.Connection): Connection to server
  - id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, SubspaceProductAPI.Model.V1SipTeleportResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec sip_teleport_service_get(Tesla.Env.client, String.t, keyword()) :: {:ok, SubspaceProductAPI.Model.V1SipTeleportResponse.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def sip_teleport_service_get(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v1/sip-teleports/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %SubspaceProductAPI.Model.V1SipTeleportResponse{}},
      { 400, false},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 429, false},
      { :default, false}
    ])
  end

  @doc """

  ## Parameters

  - connection (SubspaceProductAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :before (String.t): 
    - :limit (integer()): 
  ## Returns

  {:ok, SubspaceProductAPI.Model.V1ListSipTeleportResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec sip_teleport_service_list(Tesla.Env.client, keyword()) :: {:ok, SubspaceProductAPI.Model.V1ListSipTeleportResponse.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def sip_teleport_service_list(connection, opts \\ []) do
    optional_params = %{
      :"before" => :query,
      :"limit" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/sip-teleports")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %SubspaceProductAPI.Model.V1ListSipTeleportResponse{}},
      { 400, false},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 429, false},
      { :default, false}
    ])
  end

  @doc """

  ## Parameters

  - connection (SubspaceProductAPI.Connection): Connection to server
  - id (String.t): 
  - v1_update_sip_teleport (V1UpdateSipTeleport): Parameters to update an existing SIPTeleport, minimum requirement of one of them defined to update
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, SubspaceProductAPI.Model.V1SipTeleportResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec sip_teleport_service_update(Tesla.Env.client, String.t, SubspaceProductAPI.Model.V1UpdateSipTeleport.t, keyword()) :: {:ok, SubspaceProductAPI.Model.V1SipTeleportResponse.t} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def sip_teleport_service_update(connection, id, v1_update_sip_teleport, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/v1/sip-teleports/#{id}")
    |> add_param(:body, :body, v1_update_sip_teleport)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %SubspaceProductAPI.Model.V1SipTeleportResponse{}},
      { 400, false},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 429, false},
      { :default, false}
    ])
  end
end
