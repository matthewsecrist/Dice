defmodule Dice.Mixfile do
  use Mix.Project

  def project do
    [app: :dice,
     version: "0.2.2",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     description: description(),
     source_url: "https://github.com/matthewsecrist/Dice"]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "~> 0.12", only: :dev}
    ]
  end

  defp description do
    """
    A basic dice rolling package.
    """
  end

  defp package do
    [
      name: :ex_dice,
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Matthew Secrist"],
      licenses: ["WTFPL"],
      links: %{"GitHub" => "https://github.com/matthewsecrist/Dice"}
    ]
  end
end
