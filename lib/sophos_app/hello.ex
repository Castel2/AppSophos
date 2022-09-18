defmodule SophosApp.Hello do

  @spec __using__(keyword) ::
          {:def, [{:context, SophosApp.Hello} | {:import, Kernel}, ...],
           [[{any, any}, ...] | {:hello, [...], [...]}, ...]}
  defmacro __using__(opts) do
    greet = Keyword.get(opts, :greeting, "Hi")
    quote do
      def hello(name), do: unquote(greet) <> ", " <> name
    end
  end

end
