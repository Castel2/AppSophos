defmodule SophosApp.FibonacciServer do
  alias SophosApp.Fibonacci

  @spec handle_message({:status} | {:sequence, non_neg_integer}, any, any) :: {:ok, any, any}
  def handle_message({:sequence, n}, _caller, state) do
    result = Fibonacci.sequence(n)
    {:ok, result, [result | state]}
  end

  def handle_message({:status}, _caller, state) do
    {:ok, state, state}
  end

end
