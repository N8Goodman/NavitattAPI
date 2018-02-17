defmodule NavitatBackWeb.ArtistController do
  use NavitatBackWeb, :controller

  alias NavitatBack.Clients

  def index(conn, _params) do
    artists = Clients.list_artists
    render(conn, "index.json", artists: artists)
  end

  def show(conn, %{"id" => id}) do
    artist = Clients.get_artist!(id)
    render(conn, "show.json", artist: artist)
  end

end
