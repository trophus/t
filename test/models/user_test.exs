defmodule T.UserTest do
  use T.ModelCase

  alias T.User

  @valid_attrs %{address_line_1: "some content", address_line_2: "some content", address_state: "some content", address_zip: "some content", bio: "some content", connect_id: "some content", current_order: 42, customer_id: "some content", email: "some content", home: "some content", instagram_token: "some content", latitude: "120.5", longitude: "120.5", name: "some content", phone_number: "some content", publishable_key: "some content", secret_key: "some content", unread: 42, username: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
