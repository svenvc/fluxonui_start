defmodule FluxonUIStartWeb.PageController do
  use FluxonUIStartWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
