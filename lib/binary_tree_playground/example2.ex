defmodule TreeNode2 do
  defstruct [:value, :left, :right]

  def build(value),
    do: %__MODULE__{value: value}

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

  def contains?(nil, value), do: false
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

  defp do_push(:left, %__MODULE__{left: nil} = tree, value) do
    Map.put(tree, :left, build(value))
  end

  defp do_push(:left, tree, value) do
    left = push(tree.left, value)
    Map.put(tree, :left, left)
  end

  defp do_push(:right, %__MODULE__{right: nil} = tree, value) do
    Map.put(tree, :right, build(value))
  end

  defp do_push(:right, tree, value) do
    right = push(tree.right, value)
    Map.put(tree, :right, right)
  end
end
