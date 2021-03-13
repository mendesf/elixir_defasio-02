import Integer

defmodule ListFilter do
  defp odd?(elem) do
    elem
    |> Integer.parse()
    |> handle_parse()
    |> is_odd()
  end

  defp handle_parse({int, _rest}), do: int

  defp handle_parse(:error), do: nil

  def call(list) do
    list
    |> Enum.filter(&odd?/1)
    |> Enum.count()
  end
end
