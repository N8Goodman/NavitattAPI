defmodule NavitatBackWeb.Router do
  use NavitatBackWeb, :router

  alias NavitatBack.Guardian

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

  pipeline :jwt_authenticated do
    plug Guardian.AuthPipeline
  end

  scope "/", NavitatBackWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/artists", ArtistController
  end

  # Other scopes may use custom stacks.
  scope "/api/v1", NavitatBackWeb do
    pipe_through :api

    post "/sign_up", UserController, :create
    post "/sign_in", UserController, :sign_in

    resources "/artists", ArtistController
    resources "/authenticate_instagram", AuthenticateInstagramController
  end

  scope "/api/v1", NavitatBackWeb do
    pipe_through [:api, :jwt_authenticated]

    get "/my_user", UserController, :show
  end
end
