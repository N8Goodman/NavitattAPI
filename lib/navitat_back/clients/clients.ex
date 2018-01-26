defmodule NavitatBack.Clients do
  import Ecto.Query, warn: false

  alias NavitatBack.Repo
  alias NavitatBack.Clients
  alias NavitatBack.Clients.Artist

  def list_artists do
    Repo.all(Artist)
  end

  def get_artist!(id), do: Repo.get!(Artist, id)

  def create_artist(attrs \\ %{}) do
    %Artist{}
    |> Artist.changeset(attrs)
    |> Repo.insert()
  end
end
