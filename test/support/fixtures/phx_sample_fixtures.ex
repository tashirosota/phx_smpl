defmodule PhxSmpl.PhxSampleFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhxSmpl.PhxSample` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        memo: "some memo",
        order: 42,
        title: "some title"
      })
      |> PhxSmpl.PhxSample.create_post()

    post
  end
end
