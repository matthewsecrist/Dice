defmodule Dice do
  @moduledoc """
  Documentation for Dice.
  """

  @doc """
  Gets a list of a `d`-sided dice rolled `n` times.

  Usage: `Dice.roll(n, d)`

  Used to roll a `d`-sided dice `n` times, returning a list of the rolls.
  Supports either two numbers or one string.
  ## Examples

      iex> Dice.roll(10, 10)
      [6, 10, 3, 6, 7, 1, 2, 9, 2, 4]

      iex> Dice.roll("10d10")
      [6, 10, 3, 6, 7, 1, 2, 9, 2, 4]
  """
  def roll(n, sides) when n > 1 and is_integer(n) and sides > 1 and is_integer(sides) do
    Enum.to_list(1..n)
    |> Enum.map(fn x -> div(Enum.random(1..sides) * x, x)  end)
  end

  def roll(str) when is_bitstring(str) do
    [n, sides] = parse_string(str)
    roll(n, sides)
  end

  @doc """
  Returns the sum of a `d`-sided dice rolled `n` times.

  ## Examples
      iex> Dice.sum(10, 10)
      52

      iex> Dice.sum("10d10")
      52
  """
  def sum(n, sides) when n > 1 and is_integer(n) and sides > 1 and is_integer(sides) do
    roll(n, sides)
    |> Enum.sum
  end

  def sum(str) when is_bitstring(str) do
    [n, sides] = parse_string(str)
    sum(n, sides)
  end

  @doc """
  Returns the maximum roll of a `d`-sided dice rolled `n` times.

  ## Examples
      iex> Dice.max(10, 1000)
      914

      iex> Dice.max("10d10")
      914
  """
  def max(n, sides) when n > 1 and is_integer(n) and sides > 1 and is_integer(sides) do
    roll(n, sides)
    |> Enum.max
  end

  def max(str) when is_bitstring(str) do
    [n, sides] = parse_string(str)
    Dice.max(n, sides)
  end

  @doc """
  Returns the minimum roll of a `d`-sided dice rolled `n` times.

  ## Examples
      iex> Dice.min(10, 1000)
      49

      iex> Dice.min("10d10")
      49
  """
  def min(n, sides) when n > 1 and is_integer(n) and sides > 1 and is_integer(sides) do
    roll(n, sides)
    |> Enum.min
  end

  def min(str) when is_bitstring(str) do
    [n, sides] = parse_string(str)
    Dice.min(n, sides)
  end

  @doc """
  Returns the average roll of a `d`-sided dice rolled `n` times.

  ## Examples
      iex> Dice.avg(10, 1000)
      560
      
      iex> Dice.avg("10d10")
      560
  """
  def avg(n, sides) when n > 1 and is_integer(n) and sides > 1 and is_integer(sides) do
    sum(n,sides)
    |> div(n)
  end

  def avg(str) when is_bitstring(str) do
    [n, sides] = parse_string(str)
    avg(n, sides)
  end

  defp parse_string(str) do
    String.split(str, "d")
    |> Enum.map(fn x -> String.to_integer(x) end)
  end
end
