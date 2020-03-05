defmodule FloristockWeb.PageController do
  use FloristockWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
