defmodule BinaryTreePlayground do
  def example1 do
    TreeNode.build(3)
    |> TreeNode.push(2)
    |> TreeNode.push(4)
    |> TreeNode.push(1)
  end

  def example2 do
    TreeNode.build(3)
    |> TreeNode.push(2)
    |> TreeNode.push(4)
    |> TreeNode.push(15)
  end
end
