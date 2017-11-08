defmodule BinaryTreePlayground do
  def push_left do
    TreeNode.build(3)
    |> TreeNode.push(2)
    |> TreeNode.push(4)
    |> TreeNode.push(1)
  end

  def push_left_and_right do
    TreeNode.build(3)
    |> TreeNode.push(2)
    |> TreeNode.push(4)
    |> TreeNode.push(15)
  end

  def does_contain do
    tree =
      TreeNode2.build(3)
      |> TreeNode2.push(2)
      |> TreeNode2.push(4)
      |> TreeNode2.push(15)

    TreeNode2.contains?(tree, 15)
  end

  def does_not_contain do
    tree =
      TreeNode2.build(3)
      |> TreeNode2.push(2)
      |> TreeNode2.push(4)
      |> TreeNode2.push(15)

    TreeNode2.contains?(tree, 100)
  end
end
