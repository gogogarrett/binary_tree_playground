defmodule TreeNode do
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

  defp do_push(:left, %__MODULE__{left: nil} = tree, value) do
    Map.put(tree, :left, TreeNode.build(value))
  end

  defp do_push(:left, tree, value) do
    left = push(tree.left, value)
    Map.put(tree, :left, left)
  end

  defp do_push(:right, %__MODULE__{right: nil} = tree, value) do
    Map.put(tree, :right, TreeNode.build(value))
  end

  defp do_push(:right, tree, value) do
    right = push(tree.right, value)
    Map.put(tree, :right, right)
  end
end
