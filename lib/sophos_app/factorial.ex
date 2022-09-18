defmodule SophosApp.Factorial do

  @spec of(non_neg_integer) :: pos_integer
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n - 1)

  @spec of2(pos_integer) :: number
  def of2(n), do: compute(n, 1)

  defp compute(1, accum), do: accum
  defp compute(n, accum), do: compute(n - 1, accum * n)

end
