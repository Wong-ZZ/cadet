defmodule Cadet.Chapters.Chapter do
    @moduledoc """
    The Assessment entity stores metadata of a students' assessment
    (mission, sidequest, path, and contest)
    """
    use Cadet, :model
    use Arc.Ecto.Schema
  
    alias Cadet.Chapters
  
    schema "chapters" do
        field(:chapterno, :integer, default: :public)
    #   timestamps()
    end
  

  
    # def changeset(assessment, params) do
    #   params =
    #     params
    #     |> convert_date(:open_at)
    #     |> convert_date(:close_at)
  
    #   assessment
    #   |> cast_attachments(params, @optional_file_fields)
    #   |> cast(params, @required_fields ++ @optional_fields)
    #   |> validate_required(@required_fields)
    #   |> validate_open_close_date
    # end
  

  end
  