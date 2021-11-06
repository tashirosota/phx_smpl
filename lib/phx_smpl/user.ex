defmodule PhxSmpl.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
