defmodule NavitatBackWeb.ArtistController do
  use NavitatBackWeb, :controller

  alias NavitatBack.Models.Artist
  alias NavitatBack.Repo

  def index(conn, _params) do
    artists = Repo.all(Artist)
    render(conn, "index.json", artists: artists)
  end
end
