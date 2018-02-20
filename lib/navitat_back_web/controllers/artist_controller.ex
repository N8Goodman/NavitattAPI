defmodule NavitatBackWeb.ArtistController do
  use NavitatBackWeb, :controller

  alias NavitatBack.Clients

  def index(conn, _params) do
    artists = Clients.list_artists
    render(conn, "index.json", artists: artists)
  end

  def show(conn, %{"id" => id}) do
    artist = Clients.get_artist!(id)
    token = artist.instagram_id
    photos = Elixtagram.user_recent_media(:self, %{count: 9}, token)
    artist_with_photos = Map.put(artist, :photos, photos)
    
    render(conn, "show.json", artist: artist_with_photos)
  end

end
