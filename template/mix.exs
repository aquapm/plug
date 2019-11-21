defmodule <%= @project_name_camel_case %>.MixProject do
  use Mix.Project

  def project do
    [
      app: :<%= @project_name %>,
      version: "0.1.0",<%= if @in_umbrella? do %>
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",<% end %>
      elixir: "~> <%= @elixir_version.major %>.<%= @elixir_version.minor %>",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {<%= @project_name_camel_case %>.Application, []}
    ]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 2.1"}
    ]
  end
end
