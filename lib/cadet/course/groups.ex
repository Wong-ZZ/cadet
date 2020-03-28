defmodule Cadet.Course.Groups do
  use Cadet, [:context, :display]

  alias Cadet.Course.Group
  import Cadet.Accounts  
  
  def get_group_avengers() do
    Repo.all(Group)
    |> Enum.reduce(%{}, fn group, acc -> Map.put(acc, group.name, map_group_info(group))end)
  end

  defp map_group_info(group) do
    %{"name" => get_user(group.leader_id).name, "id" => group.id}
  end
end
