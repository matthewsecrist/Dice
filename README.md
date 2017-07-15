# Dice

A simple Dice rolling package.

Get a list of rolls of n dice by calling roll(n, sides), roll("NdSides") or roll just one by calling roll(sides).

Also includes average, sum, min and max.

## To use:

```elixir-lang
defp deps do
  [
    {:dice, "~> 0.2.2", hex: :ex_dice}
  ]
end
```

## Examples
```elixir-lang
    iex> Dice.roll(10, 10)
    [6, 6, 4, 3, 7, 1, 7, 6, 5, 5]
    iex> Dice.roll("10d10")
    [2, 8, 8, 3, 1, 2, 7, 10, 1, 3]
    iex> Dice.roll(10)
    8
    iex> Dice.avg(10, 100)
    36
    iex> Dice.sum(10, 100)
    371
    iex> Dice.min(10, 100)
    16
    iex> Dice.max(10, 100)
    99
```

See [Docs](https://hexdocs.pm/ex_dice/api-reference.html) for more info.
