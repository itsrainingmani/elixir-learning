defmodule Stats do
  # Can also be used as alias Math.List
  # This shortens to List
  alias Math.List, as: List
end

defmodule Math do
  def plus(a, b) do
    alias Math.List
    # ...
  end

  def minus(a, b) do
    # ...
  end
end


