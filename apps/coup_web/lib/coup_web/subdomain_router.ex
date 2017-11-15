defmodule CoupWeb.SubdomainRouter do
  use CoupWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  scope "/", CoupWeb do
    pipe_through :browser # Use the default browser stack

    get "/", SubDomainPageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Subdomainer do
  #   pipe_through :api
  # end
end