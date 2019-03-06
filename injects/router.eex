defmodule <%= @module_alias %> do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/ping" do
    send_resp(conn, 200, "pong")
  end

  # Default fallback for unrecognized routes
  match _ do
    send_resp(conn, 404, "Not found")
  end
end
