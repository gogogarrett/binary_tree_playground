defmodule BinaryTreePlaygroundTest do
  use ExUnit.Case
  doctest BinaryTreePlayground

  describe "pushing nodes into a tree" do
    test "example1 works" do
      assert BinaryTreePlayground.push_left == %TreeNode{
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
      assert BinaryTreePlayground.push_left_and_right == %TreeNode{
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

  describe "does this tree include? specific values" do
    test "It does contain the value" do
      assert BinaryTreePlayground.does_contain
    end

    test "It does not contain the value" do
      refute BinaryTreePlayground.does_not_contain
    end
  end
end
