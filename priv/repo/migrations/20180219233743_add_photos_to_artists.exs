defmodule NavitatBack.Repo.Migrations.AddPhotosToArtists do
  use Ecto.Migration

  def change do
    alter table(:artists) do
      add :photos, {:array, :map}, default: []
    end
  end
end
