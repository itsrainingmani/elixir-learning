defmodule User do
  defstruct name: "John", age: 27
end

# defimpl Size, for: User do
#   def size(_user), do: 2
# end

defmodule Product do
  defstruct [:name]
end

defmodule Car do
  @enforce_keys [:make]
  defstruct [:model, :make]
end

defprotocol Size do
  @doc "Calculates the size and (not the length!) of a data structure"
  def size(data)
end

defimpl Size, for: Any do
  def size(_), do: 0
end

defmodule OtherUser do
    @derive [Size]
    defstruct [:name, :age]
end