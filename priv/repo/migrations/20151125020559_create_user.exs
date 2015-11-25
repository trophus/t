defmodule T.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :name, :string
      add :username, :string
      add :latitude, :float
      add :longitude, :float
      add :phone_number, :string
      add :home, :string
      add :instagram_token, :string
      add :address_line_1, :string
      add :address_line_2, :string
      add :address_state, :string
      add :address_zip, :string
      add :customer_id, :string
      add :publishable_key, :string
      add :secret_key, :string
      add :connect_id, :string
      add :unread, :integer
      add :current_order, :integer
      add :bio, :string

      timestamps
    end

  end
end
