defmodule RiseElixir.Blocks do
    @moduledoc """
    Functions for retrieving information relating to blocks.
    """

    @doc """
    Get List of blocks, by default empty query parameters are allowed,
    Send query parameters to get appropriate block details.

    **Method**: GET

    RiseElixir.Blocks.get(%{})
    # => { success, blocks, count }
    """
    def get(args) do
        RiseElixir.handle_get_request('blocks', args)
    end

    @doc """
    Get List of blocks, by default empty query parameters are allowed,
    Send query parameters to get appropriate block details.

    **Method**: GET

    RiseElixir.Blocks.get_by_id(%{id: "13191140260435645922"})
    # => { success, block }
    """
    def get_by_id(args) do
        RiseElixir.handle_get_request('blocks/get', args)
    end

    @doc """
    Get Blockchain height.

    **Method**: GET

    RiseElixir.Blocks.get_height()
    # => { success, height }
    """
    def get_height() do
        RiseElixir.handle_get_request('blocks/getHeight', %{})
    end

    @doc """
    Get Blockchain broadhash.

    **Method**: GET

    RiseElixir.Blocks.get_broadhash()
    # => { success, broadhash }
    """
    def get_broadhash() do
        RiseElixir.handle_get_request('blocks/getBroadhash', %{})
    end

    @doc """
    Get RISE Blockchain epoch time.

    **Method**: GET

    RiseElixir.Blocks.get_epoch()
    # => { success, epoch }
    """
    def get_epoch() do
        RiseElixir.handle_get_request('blocks/getEpoch', %{})
    end

    @doc """
    Get Blockchain transaction fee.

    **Method**: GET

    RiseElixir.Blocks.get_fee(%{height: 10})
    # => { success, fee, fromHeight, toHeight, height }
    """
    def get_fee(args) do
        RiseElixir.handle_get_request('blocks/getFee', args)
    end

    @doc """
    Get RISE Blockchain fees.

    **Method**: GET

    RiseElixir.Blocks.get_fees(%{height: 10})
    # => { success, %fees{}, fromHeight, toHeight, height }
    """
    def get_fees(args) do
        RiseElixir.handle_get_request('blocks/getFees', args)
    end

    @doc """
    Get RISE Blockchain nethash.

    **Method**: GET

    RiseElixir.Blocks.get_nethash()
    # => { success, nethash }
    """
    def get_nethash() do
        RiseElixir.handle_get_request('blocks/getNethash', %{})
    end

    @doc """
    Get RISE Blockchain Milestone.

    **Method**: GET

    RiseElixir.Blocks.get_milestone()
    # => { success, milestone }
    """
    def get_milestone() do
        RiseElixir.handle_get_request('blocks/getMilestone', %{})
    end

    @doc """
    Get RISE Blockchain Reward.

    **Method**: GET

    RiseElixir.Blocks.get_reward()
    # => { success, reward }
    """
    def get_reward() do
        RiseElixir.handle_get_request('blocks/getReward', %{})
    end

    @doc """
    Get RISE Blockchain Supply.

    **Method**: GET

    RiseElixir.Blocks.get_supply()
    # => { success, supply }
    """
    def get_supply() do
        RiseElixir.handle_get_request('blocks/getSupply', %{})
    end

    @doc """
    Get RISE Blockchain Status.

    **Method**: GET

    RiseElixir.Blocks.get_status()
    # => { success, broadhash, fee, height, milestone, nethash, reward, supply }
    """
    def get_status() do
        RiseElixir.handle_get_request('blocks/getStatus', %{})
    end
end
