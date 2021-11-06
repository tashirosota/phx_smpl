defmodule PhxSmpl.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :title, :string

      timestamps()
    end
  end
end
