defmodule T.User do
  use T.Web, :model

  schema "users" do
    field :email, :string
    field :name, :string
    field :username, :string
    field :latitude, :float
    field :longitude, :float
    field :phone_number, :string
    field :home, :string
    field :instagram_token, :string
    field :address_line_1, :string
    field :address_line_2, :string
    field :address_state, :string
    field :address_zip, :string
    field :customer_id, :string
    field :publishable_key, :string
    field :secret_key, :string
    field :connect_id, :string
    field :unread, :integer
    field :current_order, :integer
    field :bio, :string

    timestamps
  end

  @required_fields ~w(email name username latitude longitude phone_number home instagram_token address_line_1 address_line_2 address_state address_zip customer_id publishable_key secret_key connect_id unread current_order bio)
  @optional_fields ~w()

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
