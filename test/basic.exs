defmodule Math do
  @moduledoc """
  Provides math-related functions.

  # Examples
      iex> Math.sum(1,2)
      3
  """
  # uses a private function
  def sum(a, b) do
    do_sum(a, b)
  end

  # private function
  defp do_sum(a, b) do
    a + b
  end

  # the ? after the f name means it returns a boolean
  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false

  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  @doc """
  Calculates the sum of a list. An example of a reduce operation on a collection

  # Examples

      iex> Math.sum_list([1,2,3], 0)
      6
  """
  def sum_list([], accumulator) do
    accumulator
  end

  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end
end

defmodule Concat do
  # the \\ defines a default value. When you're defining more than
  # one default value you have to use a separate function header for it
  def join(a, b \\ nil, sep \\ " ")

  def join(a, b, _sep) when is_nil(b) do
    a
  end

  def join(a, b, sep) do
    a <> sep <> b
  end
end

defmodule DefaultTest do
  def dowork(x \\ "hello") do
    x
  end
end

defmodule Recursion do
  # base case
  def print_multiple_times(msg, n) when n <= 1 do
    IO.puts(msg)
  end

  def print_multiple_times(msg, n) do
    IO.puts(msg)
    print_multiple_times(msg, n - 1)
  end
end

IO.puts(Math.sum(1, 2))
IO.puts(Math.zero?(0))
IO.puts(Math.zero?(1))

IO.puts(Concat.join("Hello", "world"))
IO.puts(Concat.join("Hello", "world", "_"))
IO.puts(Concat.join("Hello"))

IO.puts(DefaultTest.dowork())
IO.puts(DefaultTest.dowork(123))

Recursion.print_multiple_times("Recursion", 3)

IO.puts(Math.sum_list([1, 2, 3], 0))

# # IO.puts Math.do_sum(1,2)
# IO.puts Math.zero?([1,2,3])
# IO.puts Math.zero?(0.0)
