defmodule BinaryTreePlayground.Tree do
  defmodule Node do
    defstruct [:value, :left, :right]

    def build(value), do: %__MODULE__{value: value}
  end

  alias BinaryTreePlayground.Tree.Node

  def push(tree, value) do
    new_tree = cond do
      tree.value > value ->
        do_push(:left, tree, value)
      tree.value < value ->
        do_push(:right, tree, value)
      tree.value == value ->
        tree
    end

    new_tree
  end

  def contains?(nil, _value), do: false
  def contains?(tree, value) do
    cond do
      tree.value > value ->
        contains?(tree.left, value)
      tree.value < value ->
        contains?(tree.right, value)
      tree.value == value ->
        true
    end
  end

  def from_list([head | _tail] = list) do
    root = Node.build(head)
    Enum.reduce(list, root, fn(x, acc) ->
      push(acc, x)
    end)
  end

  defp do_push(:left, %Node{left: nil} = tree, value) do
    Map.put(tree, :left, Node.build(value))
  end

  defp do_push(:left, tree, value) do
    left = push(tree.left, value)
    Map.put(tree, :left, left)
  end

  defp do_push(:right, %Node{right: nil} = tree, value) do
    Map.put(tree, :right, Node.build(value))
  end

  defp do_push(:right, tree, value) do
    right = push(tree.right, value)
    Map.put(tree, :right, right)
  end
end
