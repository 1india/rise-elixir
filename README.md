# RISE ELIXIR MODULE

ELIXIR module to interact with RISE Blockchain APIs.

## Getting started

### Prerequisite

Install `elixir` by following the official guide https://elixir-lang.org/install.html

### Application dependencies

The package can be installed
by adding `rise_elixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:rise_elixir, "~> 0.1.0"}
  ]
end
```

### Command line usage

- Mainnet, testnet, development
  - `MIX_ENV=main iex -S mix` for RISE Mainnet Blockchain
  - `MIX_ENV=test iex -S mix` for RISE Testnet Blockchain
  - `MIX_ENV=dev iex -S mix` for dev environment
- Accessing API
  - `RiseElixir.Blocks.get(%{height: 1602864})` get block details by height
    ```elixir
    %{
      "blocks" => [
        %{
          "blockSignature" => "e93af77b1a6a7fc62fdd3c3536bc2edfbd11432f1c1fa33e311ea38af6f37587f0ce268235ad857b680473b42fa50ca214ca69f9987b0351520e9831d4d21306",
          "generatorPublicKey" => "1f0790c944397e897a5379600359bb135f4cc29b0d0271e4bc7b8ca5a6d8ef7d",
          "height" => 1602864,
          "id" => "4877940651884788797",
          "numberOfTransactions" => 0,
          "payloadHash" => "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
          "payloadLength" => 0,
          "previousBlock" => "10880968628381900817",
          "reward" => 1200000000,
          "rowId" => 1603268,
          "timestamp" => 82075380,
          "totalAmount" => 0,
          "totalFee" => 0,
          "transactions" => [],
          "version" => 0
        }
      ],
      "count" => 1,
      "success" => true
    }
    ```
  - Rest of the API documentation is available [here](https://hexdocs.pm/rise_elixir)

### Documentation

Published on [HexDocs](https://hexdocs.pm), the docs can
be found at [https://hexdocs.pm/rise_elixir](https://hexdocs.pm/rise_elixir).

### Roadmap

| Modules           |   Status   | Description                                                                      |
| ----------------- | :--------: | -------------------------------------------------------------------------------- |
| rise_elixir       | Inprogress | An API client for the RISE network                                               |
| rise_constants    |            | General constants of RISE Blockchain software                                    |
| rise_cryptography |            | General cryptographic Mnemonic passphrase functions for RISE Blockchain software |
| rise_transactions |            | RISE Blockchain transaction related module according to RISE protocol            |
