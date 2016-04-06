defmodule Piliponi.Mixfile do
  use Mix.Project

  def project do
    [app: :piliponi,
     version: "0.0.1",
     elixir: "~> 1.2",
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end


  defp description do
  """
  Simple mobile phone formatter for the Philippines
  """
  end

  defp package do
    [# These are the default files included in the package
      maintainers: ["Weto Olaguer"],
      licenses: ["MIT License"],
      links: %{"GitHub" => "https://github.com/wetoolaguer/piliponi"}]
  end
end
