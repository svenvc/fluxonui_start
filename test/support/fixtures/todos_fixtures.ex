defmodule FluxonUIStart.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `FluxonUIStart.Todos` context.
  """

  @doc """
  Generate a todo.
  """
  def todo_fixture(attrs \\ %{}) do
    {:ok, todo} =
      attrs
      |> Enum.into(%{
        description: "some description",
        due: ~D[2025-10-02]
      })
      |> FluxonUIStart.Todos.create_todo()

    todo
  end
end
