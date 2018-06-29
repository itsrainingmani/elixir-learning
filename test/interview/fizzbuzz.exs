defmodule Interview do
    @moduledoc """
    Module to hold elixir implementations of interview questions
    """

    defp check_rem(num) do
        case {rem(num, 3), rem(num, 5)} do
            {0,0} -> "FizzBuzz"
            {0,_} -> "Fizz"
            {_,0} -> "Buzz"
            {_,_} -> num
        end
    end

    @doc """
    Elixir version of the fizzbuzz question
    """
    def fizzbuzz(num_range) do
        for i <- num_range, into: [], do: to_string check_rem(i)
    end
end

IO.puts Interview.fizzbuzz(1..15)