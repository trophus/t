defmodule T.DishTest do
  use T.ModelCase

  alias T.Dish

  @valid_attrs %{description: "some content", es_id: "some content", insta_url: "some content", name: "some content", pic_url: "some content", price: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Dish.changeset(%Dish{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Dish.changeset(%Dish{}, @invalid_attrs)
    refute changeset.valid?
  end
end
