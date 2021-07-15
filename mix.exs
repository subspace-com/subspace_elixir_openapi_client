defmodule SubspaceProductAPI.Mixfile do
  use Mix.Project

  def project do
    [app: :subspace_openapi_client,
     version: "1.0.0",
     elixir: "~> 1.6",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
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
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:tesla, "~> 1.2"},
      {:poison, "~> 3.0"}
    ]
  end

  defp package do
    [
      files: ["LICENSE*", "mix.exs", "README*", "lib"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/subspace-com/subspace_elixir_openapi_client"}
    ]
  end

  defp description do
    """
    Subspace API client library, allows automation and configuration of Subspace services
    """
  end
end
