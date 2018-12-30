defmodule RiseElixir.Transactions do
    @moduledoc """
    Functions for retrieving information about transactions.
    """

    @doc """
    Get list of transactions.

    **Method**: GET

    RiseElixir.Transactions.get(any)
    # => { success, count, transactions }
    """
    def get(args) do
        RiseElixir.handle_get_request('transactions', args)
    end

    @doc """
    Get transaction by id.

    **Method**: GET

    RiseElixir.Transactions.get_by_id(%{id: string})
    # => { success, transaction }
    """
    def get_by_id(args) do
        RiseElixir.handle_get_request('transactions/get', args)
    end

    @doc """
    Create confirmed, multisignature, queued, unconfirmed transaction count.

    **Method**: GET

    RiseElixir.Transactions.get_count()
    # => { success, confirmed, multisignature, queued, unconfirmed }
    """
    def get_count() do
        RiseElixir.handle_get_request('transactions/count', %{})
    end

    @doc """
    Get multisignature transactions.

    **Method**: GET

    RiseElixir.Transactions.get_multisignatures(%{senderPublicKey: string, address: string})
    # => { success, count, transactions }
    """
    def get_multisignatures(args) do
        RiseElixir.handle_get_request('transactions/multisignatures', args)
    end

    @doc """
    Get multisignature transaction by id.

    **Method**: GET

    RiseElixir.Transactions.get_multisignatures_by_id(%{id: string})
    # => { success, transaction }
    """
    def get_multisignatures_by_id(args) do
        RiseElixir.handle_get_request('transactions/multisignatures/get', args)
    end

    @doc """
    Get queued transactions.

    **Method**: GET

    RiseElixir.Transactions.get_queued(%{senderPublicKey: string, address: string})
    # => { success, count, transactions }
    """
    def get_queued(args) do
        RiseElixir.handle_get_request('transactions/queued', args)
    end

    @doc """
    Get queued transaction by id.

    **Method**: GET

    RiseElixir.Transactions.get_queued(%{id: string})
    # => { success, transaction }
    """
    def get_queued_by_id(args) do
        RiseElixir.handle_get_request('transactions/queued/get', args)
    end

    @doc """
    Get unconfirmed transactions.

    **Method**: GET

    RiseElixir.Transactions.get_unconfirmed(%{senderPublicKey: string, address: string})
    # => { success, transaction }
    """
    def get_unconfirmed(args) do
        RiseElixir.handle_get_request('transactions/unconfirmed', args)
    end

    @doc """
    Get unconfirmed transaction by id.

    **Method**: GET

    RiseElixir.Transactions.get_unconfirmed_by_id(%{id: string})
    # => { success, transaction }
    """
    def get_unconfirmed_by_id(args) do
        RiseElixir.handle_get_request('transactions/unconfirmed/get', args)
    end

    @doc """
    Create transaction.

    **Method**: PUT

    RiseElixir.Transactions.put(transactionObject)
    # => { success, transaction }
    """
    def put(args) do
        RiseElixir.handle_put_request('transactions/put', args)
    end
end
