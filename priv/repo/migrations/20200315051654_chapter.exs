defmodule Cadet.Repo.Migrations.Chapter do
  use Ecto.Migration

  def change do
    create table(:chapters) do
      add :chapterno, :integer, null: false
    end

  end
end
