defmodule Dice do
  @moduledoc """
  Documentation for Dice.
  """

  @doc """
  Gets a list of a `d`-sided dice rolled `n` times.

  Usage: `Dice.roll(n, d)`

  Used to roll a `d`-sided dice `n` times, returning a list of the rolls.
  ## Examples

      iex> Dice.roll(10, 10)
      [6, 10, 3, 6, 7, 1, 2, 9, 2, 4]

  """
  def roll(n, sides) when n > 0 and is_integer(n) and sides > 1 and is_integer(sides) do
    Enum.to_list(1..n)
    |> Enum.map(fn x -> div(Enum.random(1..sides) * x, x)  end)
  end

  @doc """
  Returns the sum of a `d`-sided dice rolled `n` times.

  ## Examples
      iex> Dice.sum(10, 10)
      52
  """
  def sum(n, sides) when n > 0 and is_integer(n) and sides > 1 and is_integer(sides) do
    roll(n, sides)
    |> Enum.sum
  end

  @doc """
  Returns the maximum roll of a `d`-sided dice rolled `n` times.

  ## Examples
      iex> Dice.max(10, 1000)
      914
  """
  def max(n, sides) do
    roll(n, sides)
    |> Enum.max
  end

  @doc """
  Returns the minimum roll of a `d`-sided dice rolled `n` times.

  ## Examples
      iex> Dice.min(10, 1000)
      49
  """
  def min(n, sides) do
    roll(n, sides)
    |> Enum.min
  end

  @doc """
  Returns the average roll of a `d`-sided dice rolled `n` times.

  ## Examples
      iex> Dice.avg(10, 1000)
      560
  """
  def avg(n, sides) do
    sum(n,sides)
    |> div(n)
  end
end
