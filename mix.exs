defmodule RiseElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :rise_elixir,
      version: "0.1.0",
      elixir: "~> 1.6",
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp description do
    """
    ELIXIR module to interact with RISE Blockchain APIs.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["1india"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/1india/rise-elixir",
            "Docs" => "https://hexdocs.pm/rise_elixir"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [ {:ex_doc, "~> 0.11", only: :dev},
      {:earmark, "~> 0.1", only: :dev},
      {:httpoison, "~> 1.0"},
      {:poison, "~> 4.0"}]
  end
end
