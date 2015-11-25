defmodule T.Repo.Migrations.CreateDish do
  use Ecto.Migration

  def change do
    create table(:dishes) do
      add :name, :string
      add :description, :string
      add :price, :integer
      add :pic_url, :string
      add :insta_url, :string
      add :es_id, :string

      timestamps
    end

  end
end
