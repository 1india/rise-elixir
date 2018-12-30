defmodule RiseElixir do
  @moduledoc """
  Documentation for RiseElixir.
  """

  @doc """
  RISE node address
  """
  def node_address, do: Application.get_env(:rise_elixir, :address)

  @doc """
  Function to construct the url
  """
  def build_url(route), do: "#{node_address()}/#{route}"

  @doc """
  Function to handle the get request
  """
  def handle_get_request(route, args) do
    try do
      case RiseElixir.Client.get(route, args) do
        {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
          body |> Poison.decode!
        {:ok, %HTTPoison.Response{status_code: 404}} -> "Invalid request :("
        {:ok, %HTTPoison.Response{status_code: 400, body: body}} ->
          body |> Poison.decode!
        {:error, %HTTPoison.Error{reason: reason}} -> reason
      end
    rescue
      e -> e
    end
  end

  @doc """
  Function to handle the post request
  """
  def handle_post_request(route, args) do
    try do
      case RiseElixir.Client.post(route, args) do
        {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
          body |> Poison.decode!
        {:ok, %HTTPoison.Response{status_code: 404}} -> "Invalid request :("
        {:ok, %HTTPoison.Response{status_code: _, body: body}} ->
          body |> Poison.decode!
        {:error, %HTTPoison.Error{reason: reason}} -> reason
      end
    rescue
      e -> e
    end
  end

  @doc """
  Function to handle the put request
  """
  def handle_put_request(route, args) do
    try do
      case RiseElixir.Client.put(route, args) do
        {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
          body |> Poison.decode!
        {:ok, %HTTPoison.Response{status_code: 404}} -> "Invalid request :("
        {:ok, %HTTPoison.Response{status_code: _, body: body}} ->
          body |> Poison.decode!
        {:error, %HTTPoison.Error{reason: reason}} -> reason
      end
    rescue
      e -> e
    end
  end
end
