defmodule RiseElixir.Accounts do
    @moduledoc """
    Functions for retrieving information from accounts.
    """

    @doc """
    Get RISE account.

    **Method**: GET

    RiseElixir.Accounts.get_account(%{address?: string, publicKey?: publicKey})
    # => { success, account }
    """
    def get_account(args) do
        RiseElixir.handle_get_request('accounts', args)
    end

    @doc """
    Get account balance.

    **Method**: GET

    RiseElixir.Accounts.get_balance(%{address: string})
    # => { success, balance, unconfirmedBalance }
    """
    def get_balance(args) do
        RiseElixir.handle_get_request('accounts/getBalance', args)
    end

    @doc """
    Get RISE account publickey.

    **Method**: GET

    RiseElixir.Accounts.get_publicKey(%{address: string})
    # => { success, publicKey }
    """
    def get_publicKey(args) do
        RiseElixir.handle_get_request('accounts/getPublicKey', args)
    end

    @doc """
    Get RISE account delegate details.

    **Method**: GET

    RiseElixir.Accounts.get_delegates(%{address: string})
    # => { success, delegates }
    """
    def get_delegates(args) do
        RiseElixir.handle_get_request('accounts/delegates', args)
    end

    @doc """
    Get RISE account delegate details.

    **Method**: GET

    RiseElixir.Accounts.get_delegates_fee(%{height: number})
    # => { success, fee }
    """
    def get_delegates_fee(args) do
        RiseElixir.handle_get_request('accounts/delegates/fee', args)
    end

    @doc """
    Get top account details.

    **Method**: GET

    RiseElixir.Accounts.get_top(%{limit?: number, offset?: number})
    # => { success, accounts }
    """
    def get_top(args) do
        RiseElixir.handle_get_request('accounts/top', args)
    end
end
