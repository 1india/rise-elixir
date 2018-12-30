defmodule RiseElixir.Signatures do
    @moduledoc """
    Functions for signatures.
    """

    @doc """
    Get signatures fee.

    **Method**: GET

    RiseElixir.Signatures.get_fee(%{height?: number})
    # => { success, fromHeight, height, toHeight, fee }
    """
    def get_fee(args) do
        RiseElixir.handle_get_request('signatures/fee', args)
    end
end
