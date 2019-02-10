defmodule <%= @project_name_camel_case %>.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    Supervisor.start_link(
      [
        Plug.Cowboy.child_spec(
          scheme: :http,
          plug: nil,
          options: [
            port: Application.get_env(:<%= @project_name %>, :port, 4000),
            dispatch: dispatch()
          ]
        )
      ],
      strategy: :one_for_one,
      name: <%= @project_name_camel_case %>.Application
    )
  end

  defp dispatch() do
    [
      {:_,
       [
         <%= if @ws %>{"/ws", <%= @project_name_camel_case %>.Ws, %{}},<% end %><%= if @ws and @static %>
         <% end %><%= if @static %>{"/static/[...]", :cowboy_static, {:priv_dir, :<%= @project_name %>, "static"}},<% end %>
         {:_, Plug.Cowboy.Handler, {<%= @project_name_camel_case %>.Endpoint, []}}
       ]}
    ]
  end
end
