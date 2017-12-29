defmodule NavitatBack.Repo.Migrations.CreateArtists do
  use Ecto.Migration

  def change do
    create table(:artists) do
      add :name, :string
      add :instagram_id, :string

      timestamps()
    end
  end
end
