defmodule CoupWeb.SubDomainPageController do
  use CoupWeb, :controller

  def index(conn, _params) do
    text(conn, "Subdomain home page for #{conn.private[:subdomain]}")
  end
end
