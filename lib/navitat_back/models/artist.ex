defmodule NavitatBack.Models.Artist do
  use Ecto.Schema
  import Ecto.Changeset

  alias NavitatBack.Models.Artist

  schema "artists" do
    field :name, :string
    field :instagram_id, :string

    timestamps()
  end

  def changeset(%Artist{} = artist, attrs) do
    artist
    |> cast(attrs, [:name, :instagram_id])
    |> validate_required([:name])
  end
end
