defmodule SophosApp.Math do

  @pi 3.1415

  @spec sum(number, number) :: number
  def sum(a, b) do
    a + b
  end

  @spec mcd(any, integer) :: any
  def mcd(a, 0), do: a
  def mcd(a, b), do: mcd(b, rem(a, b))

  @spec kind(any) :: :negative | :positive | :zero
  def kind(n) when n < 0, do: :negative
  def kind(0), do: :zero
  def kind(n) when n > 0, do: :positive


  @spec circumference(number) :: float
  def circumference(r), do: 2 * r * @pi

  defmodule Geometry.Rectangle do
    @spec area(number, number) :: number
    def area(a), do: area(a, a)
    def area(a, b), do: a * b
  end
end
