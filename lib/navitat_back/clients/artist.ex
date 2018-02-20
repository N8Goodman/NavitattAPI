defmodule NavitatBack.Clients.Artist do
  use Ecto.Schema
  import Ecto.Changeset

  alias NavitatBack.Clients.Artist

  schema "artists" do
    field :name, :string
    field :instagram_id, :string
    field :photos, {:array, :map}

    timestamps()
  end

  def changeset(%Artist{} = artist, attrs) do
    artist
    |> cast(attrs, [:name, :instagram_id, :photos])
    |> validate_required([:name])
  end
end
