defmodule ListFilter do

  def call(list) do
    filter(list)
  end

  def filter(list) do
    Enum.filter(list, fn x -> is_integer(x) == true end)
    |> Enum.filter(fn x -> rem(x, 2) != 0 end)
    |> Enum.count()
  end

end
