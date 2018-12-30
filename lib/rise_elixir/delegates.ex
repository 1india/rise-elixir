defmodule RiseElixir.Delegates do
    @moduledoc """
    Functions for retrieving information about Delegate.
    """

    @doc """
    Get list of RISE Delegates.

    **Method**: GET

    RiseElixir.Delegates.get(%{orderBy: string, limit: number, offset: number, includeBanned: 'true'|'false'})
    # => { success, meta, links }
    """
    def get(args) do
        RiseElixir.handle_get_request('delegates', args)
    end

    @doc """
    Get delegate details.

    **Method**: GET

    RiseElixir.Delegates.get_delegate(%{publicKey: publicKey, username: string })
    # => { success, delegate }
    """
    def get_delegate(args) do
        RiseElixir.handle_get_request('delegates/forging/getForgedByAccount', args)
    end

    @doc """
    Get delegate fee.

    **Method**: GET

    RiseElixir.Delegates.get_fee(%{height?: number})
    # => { success, fees, forged, rewards }
    """
    def get_fee(args) do
        RiseElixir.handle_get_request('delegates/fee', args)
    end

    @doc """
    Get forged details by account.

    **Method**: GET

    RiseElixir.Delegates.get_forged_by_account(%{generatorPublicKey: publicKey, start?: number, end?: number })
    # => { success, fees, forged, rewards }
    """
    def get_forged_by_account(args) do
        RiseElixir.handle_get_request('delegates/forging/getForgedByAccount', args)
    end

    @doc """
    Get voters for a delegate.

    **Method**: GET

    RiseElixir.Delegates.get_voters(%{publicKey: publicKey})
    # => { success, accounts }
    """
    def get_voters(args) do
        RiseElixir.handle_get_request('delegates/voters', args)
    end

    @doc """
    Search delegate.

    **Method**: GET

    RiseElixir.Delegates.search(%{q: string, limit?: number, orderBy?: string})
    # => { success, delegates }
    """
    def search(args) do
        RiseElixir.handle_get_request('delegates/search', args)
    end

    @doc """
    Get Delegates count.

    **Method**: GET

    RiseElixir.Delegates.get_count()
    # => { success, count }
    """
    def get_count() do
        RiseElixir.handle_get_request('delegates/count', %{})
    end

    @doc """
    Get list of next forgers.

    **Method**: GET

    RiseElixir.Delegates.get_next_forgers(%{})
    # => { success, currentBlock, currentBlockSlot, currentSlot, delegates }
    """
    def get_next_forgers(args) do
        RiseElixir.handle_get_request('delegates/getNextForgers', args)
    end

    @doc """
    Get delegate forging status.

    **Method**: GET

    RiseElixir.Delegates.get_forging_status(%{publicKey: publicKey})
    # => { success, delegates, enabled }
    """
    def get_forging_status(args) do
        RiseElixir.handle_get_request('delegates/forging/status', args)
    end

    @doc """
    Enable forging on an account.

    **Method**: POST

    RiseElixir.Delegates.enable_forging(%{secret: string, publicKey: string})
    # => { success, }
    """
    def enable_forging(args) do
        RiseElixir.handle_get_request('delegates/forging/enable', args)
    end

    @doc """
    Disable forging on an account.

    **Method**: POST

    RiseElixir.Delegates.disable_forging(%{secret: string, publicKey: string})
    # => { success, }
    """
    def disable_forging(args) do
        RiseElixir.handle_get_request('delegates/forging/disable', args)
    end
end
