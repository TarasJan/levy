defmodule Levy.MixProject do
  use Mix.Project

  def project do
    [
      app: :levy,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      description: "Implementation of Levenshtein distance algorithm in Elixir",
      source_url: "https://github.com/TarasJan/levy"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # package details
  defp package do
    [
      files: ~w(lib .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/TarasJan/levy"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    []
  end
end
