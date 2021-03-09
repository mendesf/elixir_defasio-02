import Integer

defmodule ListFilter do
  def odd?(elem) do
    try do
      String.to_integer(elem)
    rescue
      ArgumentError -> false
    else
      value -> is_odd(value)
    end
  end

  def call(list) do
    list
    |> Enum.filter(&odd?/1)
    |> length
  end
end
