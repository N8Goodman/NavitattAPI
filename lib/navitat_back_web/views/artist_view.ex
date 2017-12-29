defmodule NavitatBackWeb.ArtistView do
  use NavitatBackWeb, :view
  alias NavitatBackWeb.ArtistView

  def render("index.json", %{artists: artists}) do
    render_many(artists, ArtistView, "artist.json")
  end

  # def render("show.json", %{artist: artist}) do
  #   render_one(artist, ArtistView, "artist.json")
  # end

  def render("artist.json", %{artist: artist}) do
    %{id: artist.id,
      name: artist.name,
      instagram_id: artist.instagram_id}
  end
end
