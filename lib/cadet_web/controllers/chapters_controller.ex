defmodule CadetWeb.ChaptersController do
  @moduledoc """
  Provides Chapter Number
  """

  use CadetWeb, :controller
  use PhoenixSwagger

  alias Cadet.Chapters

  def show(conn, params = %{"id" => chapter_id}) when is_ecto_id(chapter_id) do
    # user = conn.assigns[:current_user]
    # password = params |> Map.get("password")
    {:ok, chapter} = Chapters.get_chapter()

    render(conn, "show.json", chapter: chapter)
      

    # case Assessments.assessment_with_questions_and_answers(assessment_id, user, password) do
    #   {:ok, assessment} -> render(conn, "show.json", assessment: assessment)
    #   {:error, {status, message}} -> send_resp(conn, status, message)
    # end
  end

  def index(conn, _) do
    # chapter = Cadet.Chapter |> Ecto.Query.first |> Cadet.Repo.one
    # chapterno = Cadet.Chapters.Chapter |> Ecto.Query.first |> Cadet.Repo.one

    {:ok, chapter} = Chapters.get_chapter()

    # render(
    #   conn,
    #   "show.json",
    #   chapter: chapter
    # )
    render(
      conn,
      "show.json",
      chapter: 1
    )
  end

  # def index(conn, _) do
  #   user = conn.assigns[:current_user]
  #   {:ok, assessments} = Assessments.get_assessments_overview(user)

  #   render(conn, "index.json", assessments: assessments)
  # end

#   def update do
#     person = %Friends.Person{}
#     changeset = Friends.Person.changeset(person, %{})
#     Friends.Repo.insert(changeset)
#   end

#   def changeset(chapter, params \\ %{}) do
#     person
#     |> Ecto.Changeset.cast(params, [:chapterno])
#     |> Ecto.Changeset.validate_required([:chapterno])
#   end

  # def update(conn, %{"chapterno" => chapterno}) do
  #   result = Chapter.change_chapter(chapterno)

  #   case result do
  #     {:ok, _nil} ->
  #       send_resp(conn, 200, "OK")

  #     {:error, {status, message}} ->
  #       conn
  #       |> put_status(status)
  #       |> text(message)
  #   end
  # end

    
end
