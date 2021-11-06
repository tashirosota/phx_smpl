defmodule PhxSmpl.PhxSample.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :body, :string
    field :memo, :string
    field :order, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :body, :memo, :order])
    |> validate_required([:title, :body, :memo, :order])
  end
end
