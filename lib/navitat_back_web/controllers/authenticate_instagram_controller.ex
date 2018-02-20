defmodule NavitatBackWeb.AuthenticateInstagramController do
  use NavitatBackWeb, :controller

  alias NavitatBackWeb.ArtistView

  alias NavitatBack.Clients

  def update(conn, %{"id" => id, "params" => params}) do
    artist = Clients.get_artist!(id)
    code = params["code"]

    Elixtagram.configure
    {:ok, token} = Elixtagram.get_token!(code: code)

    {:ok, artist} = Clients.update_artist(artist, %{instagram_id: token})

    render(conn, ArtistView, "show.json", artist: artist)
  end
end
