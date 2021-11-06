defmodule PhxSmpl.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :text
      add :memo, :text
      add :order, :integer

      timestamps()
    end
  end
end
