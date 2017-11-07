defmodule BinaryTreePlaygroundTest do
  use ExUnit.Case
  doctest BinaryTreePlayground

  test "example1 works" do
    assert BinaryTreePlayground.example1 == %TreeNode{
      left: %TreeNode{
        left: %TreeNode{
          left: nil,
          right: nil,
          value: 1,
        },
        right: nil,
        value: 2,
      },
      right: %TreeNode{
        left: nil,
        right: nil,
        value: 4,
      },
      value: 3,
    }
  end

  test "example2 works" do
    assert BinaryTreePlayground.example2 == %TreeNode{
      left: %TreeNode{
        left: nil,
        right: nil,
        value: 2,
      },
      right: %TreeNode{
        left: nil,
        right: %TreeNode{
          left: nil,
          right: nil,
          value: 15,
        },
        value: 4,
      },
      value: 3,
    }
  end
end
