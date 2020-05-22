defmodule ElementalAtomWeb.PageController do
  use ElementalAtomWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
