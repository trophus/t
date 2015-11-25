defmodule T.PageController do
  use T.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
