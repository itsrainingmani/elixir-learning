ExUnit.start()

defmodule FizzbuzzTest do
    use ExUnit.Case, async: true

    use Interview
    test "fizzbuzz" do
        assert Interview.fizzbuzz([1,2,3,4,5]) == [1,2,"Fizz",4,"Buzz"]
    end
end