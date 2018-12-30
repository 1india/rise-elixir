defmodule RiseElixir.Peers do
    @moduledoc """
    Functions for retrieving information about peers.
    """

    @doc """
    Get peers list.

    **Method**: GET

    RiseElixir.Peers.get()
    # => { success, peers }
    """
    def get(args) do
        RiseElixir.handle_get_request('peers', args)
    end

    @doc """
    Get peer by ip, port.

    **Method**: GET

    RiseElixir.Peers.get_peer(%{ip: string, port: number})
    # => { success, peers }
    """
    def get_peer(args) do
        RiseElixir.handle_get_request('peers/get', args)
    end

    @doc """
    Get connected, disconnected, banned peer count.

    **Method**: GET

    RiseElixir.Peers.get_peers_count()
    # => { success, connected, disconnected, banned }
    """
    def get_peers_count() do
        RiseElixir.handle_get_request('peers/count', %{})
    end

    @doc """
    Get build, minVersion, version of the peer.

    **Method**: GET

    RiseElixir.Peers.get_version()
    # => { success, build, minVersion, version }
    """
    def get_version() do
        RiseElixir.handle_get_request('peers/version', %{})
    end
end
