defmodule Cadet.Chapters do
  @moduledoc """
  Assessments context contains domain logic for assessments management such as
  missions, sidequests, paths, etc.
  """
  use Cadet, [:context, :display]

  import Ecto.Query

  # alias Cadet.Accounts.{Notifications, User}
  alias Cadet.Chapters.{Chapter}
  alias Ecto.Multi

  def get_chapter() do
    chapter = Repo.one(Chapter)
    {:ok, chapter}
  end

  # def get_chapter(user = %User{}) do
  #   role = user.role
  #   case role do
  #     :staff -> all_published_assessments(user)
  #     _ -> all_assessments(user)
  #   end
  # end

end

# defmodule Cadet.Chapter do
#   @moduledoc """
#   The Assessment entity stores metadata of a students' assessment
#   (mission, sidequest, path, and contest)
#   """
#   use Cadet, :model
#   # use Arc.Ecto.Schema
#   # import Ecto.Changeset
#   # import Ecto.Query
#   # alias Ecto.Multi
  
#   alias Cadet.Accounts.{User}

# #   alias Cadet.Assessments.{AssessmentAccess, AssessmentType, Question, SubmissionStatus, Upload}

# @change_chapter_role ~w(staff admin)a

#   schema "chapters" do
#     field(:chapterno, :integer, default: :public)
#   end

# #   def simple_update(queryable, chapterno, opts \\ []) do
# #     params = opts[:params] || []
# #     using = opts[:using] || fn x, _ -> x end
# #     model = Cadet.Chapter |> Ecto.Query.first |> Cadet.Repo.one

# #     if model == nil do
# #       {:error, :not_found}
# #     else
# #       changeset = using.(model, params)
# #       Repo.update(changeset)
# #     end
# #   end

#   # def update_chapter(chapternumber) do
   
#   #   # Cadet.Chapter.update(changeset)
#   #   # simple_update(
#   #   #   Chapter,
#   #   #   using: &Chapter.changeset/2,
#   #   #   params: params
#   #   # )
#   #   chapter = Cadet.Chapter |> Ecto.Query.first |> Cadet.Repo.one
#   #   changeset = Cadet.Chapter.changeset(chapter, %{chapterno: chapternumber})
#   #   Cadet.Chapter.update!(changeset)

#   # end

#   # def change_chapter(_user = %User{role: role}, chapternumber) do
#   #   # if role in @change_chapter_role do
#   #     update_chapter(chapternumber)
#   #   # else
#   #   #   {:error, {:forbidden, "User is not permitted to publish"}}
#   #   # end
#   # end

#   def changeset(chapter, params \\ %{}) do
#     chapter
#     |> cast(params, [:chapterno])
#     |> validate_required([:chapterno])
#     |> validate_inclusion(:chapterno, 1..4)
#   end


# #   @required_fields ~w(type title open_at close_at number)a
# #   @optional_fields ~w(reading summary_short summary_long
# #     is_published story cover_picture access password)a
# #   @optional_file_fields ~w(mission_pdf)a

# #   def changeset(assessment, params) do
# #     params =
# #       params
# #       |> convert_date(:open_at)
# #       |> convert_date(:close_at)

# #     assessment
# #     |> cast_attachments(params, @optional_file_fields)
# #     |> cast(params, @required_fields ++ @optional_fields)
# #     |> validate_required(@required_fields)
# #     |> validate_open_close_date
# #   end

# #   defp validate_open_close_date(changeset) do
# #     validate_change(changeset, :open_at, fn :open_at, open_at ->
# #       if Timex.before?(open_at, get_field(changeset, :close_at)) do
# #         []
# #       else
# #         [open_at: "Open date must be before close date"]
# #       end
# #     end)
# #   end
# end
