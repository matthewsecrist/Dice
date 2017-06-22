# Dice

A simple Dice rolling package.

## To use:
```elixir-lang
defp deps do
  [
    {:dice, "~> 0.2.0", hex: :ex_dice}
  ]
end
```

## Examples
```elixir-lang
  iex> Dice.roll(10, 10)
  [6, 10, 3, 6, 7, 1, 2, 9, 2, 4]

  iex> Dice.sum(10, 10)
  52
```

See [Docs](http://www.matthewsecrist.net/Dice) for more info.
