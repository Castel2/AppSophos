defmodule SophosApp.MyList do


  @spec sum([number]) :: number
  def sum(list) do
    sum(list, 0)
  end

  defp sum([], n), do: n
  defp sum([h | t], n), do: sum(t, n + h)

  @spec filter_current_files :: list
  def filter_current_files() do
    "."
    |> Path.join("**/*.ex")
    |> Path.wildcard()
    |> Enum.filter(fn f ->
      String.contains?(Path.basename(f), "application")
    end)
  end

  @spec generate(pos_integer) :: [number]
  def generate(n) when n > 0 do
    generate(n, [])
  end

  defp generate(0, list), do: list
  defp generate(n, list), do: generate(n - 1, [n | list])

end
