defmodule <%= @project_name_camel_case %>.EndpointTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts <%= @project_name_camel_case %>.Endpoint.init([])

  test "returns pong" do
    # Create a test connection
    conn = conn(:get, "/ping")

    # Invoke the plug
    conn = <%= @project_name_camel_case %>.Endpoint.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "pong"
  end
end
