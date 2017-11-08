defmodule BinaryTreePlayground.TreeTest do
  use ExUnit.Case

  alias BinaryTreePlayground.Tree

  describe "pushing nodes into a tree" do
    test "push_left" do
      tree =
        Tree.Node.build(3)
        |> Tree.push(2)
        |> Tree.push(4)
        |> Tree.push(1)

      assert tree == %Tree.Node{
        left: %Tree.Node{
          left: %Tree.Node{
            left: nil,
            right: nil,
            value: 1,
          },
          right: nil,
          value: 2,
        },
        right: %Tree.Node{
          left: nil,
          right: nil,
          value: 4,
        },
        value: 3,
      }
    end

    test "push_left_and_right" do
      tree =
        Tree.Node.build(3)
        |> Tree.push(2)
        |> Tree.push(4)
        |> Tree.push(15)

      assert tree == %Tree.Node{
        left: %Tree.Node{
          left: nil,
          right: nil,
          value: 2,
        },
        right: %Tree.Node{
          left: nil,
          right: %Tree.Node{
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
      tree =
        Tree.Node.build(3)
        |> Tree.push(2)
        |> Tree.push(4)
        |> Tree.push(15)

      assert Tree.contains?(tree, 15)
    end

    test "It does not contain the value" do
      tree =
        Tree.Node.build(3)
        |> Tree.push(2)
        |> Tree.push(4)
        |> Tree.push(15)

      refute Tree.contains?(tree, 100)
    end
  end

  describe "from list builds a tree" do
    test "given a list of 1, 2, 3, 4 - will produce a valid tree" do
      list = [1, 2, 3]
      tree = Tree.from_list(list)

      list
      |> Enum.each(fn(x) ->
        assert Tree.contains?(tree, x)
      end)
    end
  end
end
