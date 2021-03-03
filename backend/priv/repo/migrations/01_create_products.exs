defmodule Backend.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products, primary_key: false) do
      add(:id, :string)
      add(:name, :string)
      add(:price, :integer)

      timestamps()
    end

    create(unique_index(:products, [:id]))
  end
end
