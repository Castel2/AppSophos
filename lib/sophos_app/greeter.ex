defmodule SophosApp.Greeter do

  @spec hello :: <<_::136>>
  def hello(), do: "Hello anon person"
  @spec hello(binary, <<_::16>>) :: binary
  def hello(name, lang \\ "en"), do: phrase(lang) <> name

  defp phrase("en"), do: "Howdy "
  defp phrase("es"), do: "Hola "

end
