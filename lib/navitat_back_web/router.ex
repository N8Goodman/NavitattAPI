defmodule NavitatBackWeb.Router do
  use NavitatBackWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", NavitatBackWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/artists", ArtistController
  end

  # Other scopes may use custom stacks.
  scope "/api", NavitatBackWeb do
    pipe_through :api

    resources "/artists", ArtistController

    get "/authenticate_instagram/:artist_id", AuthenticateInstagramController, :create
  end
end
