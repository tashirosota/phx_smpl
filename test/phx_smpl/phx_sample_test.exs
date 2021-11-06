defmodule PhxSmpl.PhxSampleTest do
  use PhxSmpl.DataCase

  alias PhxSmpl.PhxSample

  describe "posts" do
    alias PhxSmpl.PhxSample.Post

    import PhxSmpl.PhxSampleFixtures

    @invalid_attrs %{body: nil, memo: nil, order: nil, title: nil}

    test "list_posts/0 returns all posts" do
      post = post_fixture()
      assert PhxSample.list_posts() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert PhxSample.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{body: "some body", memo: "some memo", order: 42, title: "some title"}

      assert {:ok, %Post{} = post} = PhxSample.create_post(valid_attrs)
      assert post.body == "some body"
      assert post.memo == "some memo"
      assert post.order == 42
      assert post.title == "some title"
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = PhxSample.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{body: "some updated body", memo: "some updated memo", order: 43, title: "some updated title"}

      assert {:ok, %Post{} = post} = PhxSample.update_post(post, update_attrs)
      assert post.body == "some updated body"
      assert post.memo == "some updated memo"
      assert post.order == 43
      assert post.title == "some updated title"
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = PhxSample.update_post(post, @invalid_attrs)
      assert post == PhxSample.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = PhxSample.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> PhxSample.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = PhxSample.change_post(post)
    end
  end
end
