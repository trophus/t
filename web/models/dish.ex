defmodule T.Dish do
  use T.Web, :model

  schema "dishes" do
    field :name, :string
    field :description, :string
    field :price, :integer
    field :pic_url, :string
    field :insta_url, :string
    field :es_id, :string

    timestamps
  end

  @required_fields ~w(name description price)
  @optional_fields ~w(insta_url pic_url es_id)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
