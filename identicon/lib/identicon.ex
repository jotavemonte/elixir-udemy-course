defmodule Identicon do

  def hex_string(input) do
    :crypto.hash(:md5, input)
    |> :binary.bin_to_list
  end

  def main(input) do
    input
    |> hex_string
  end
end
