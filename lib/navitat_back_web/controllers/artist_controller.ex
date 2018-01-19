defmodule NavitatBackWeb.ArtistController do
  use NavitatBackWeb, :controller

  alias NavitatBack.Clients

  def index(conn, _params) do
    artists = Clients.list_artists
    render(conn, "index.json", artists: artists)
  end
end
