defmodule PhoenixCoherence.PageController do
  use PhoenixCoherence.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
