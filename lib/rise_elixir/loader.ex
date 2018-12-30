defmodule RiseElixir.Loader do
  @moduledoc """
  Functions for retrieving information from loader.
  """

  @doc """
  Get Node status.

  **Method**: GET

  RiseElixir.Loader.get_status()
  # => { success, loaded }
  """
  def get_status() do
    RiseElixir.handle_get_request('loader/status', %{})
  end

  @doc """
  Get Node sync status.

  **Method**: GET

  RiseElixir.Loader.get_sync_status()
  # => { success, broadhash, consensus, height, syncing }
  """
  def get_sync_status() do
    RiseElixir.handle_get_request('loader/status/sync', %{})
  end

  @doc """
  Put Node forging status.

  **Method**: GET

  RiseElixir.Loader.ping()
  # => { success }
  """
  def ping() do
    RiseElixir.handle_put_request('loader/status/ping', %{})
  end
end
