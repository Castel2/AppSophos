defmodule SophosApp.FactorialServer do
  alias SophosApp.Factorial

  @spec handle_message({:status} | {:compute, non_neg_integer}, any, any) :: {:ok, any, any}
  def handle_message({:compute, n}, _caller, state) do
    result = Factorial.of(n)
    {:ok, result, [result | state]}
  end

  def handle_message({:status}, _caller, state) do
    {:ok, state, state}
  end

end
