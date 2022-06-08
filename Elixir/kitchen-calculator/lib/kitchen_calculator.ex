defmodule KitchenCalculator do
  # Unit to convert in milliters
  @unit %{
    milliliter: 1,
    cup: 240,
    fluid_ounce: 30,
    teaspoon: 5,
    tablespoon: 15
  }
  def get_volume(volume_pair), do: elem(volume_pair, 1)

  def to_milliliter({atomo, _volyme} = volume_pair) do
    {:milliliter, get_volume(volume_pair) * @unit[atomo]}
  end

  def from_milliliter(volume_pair, atomo) do
    {atomo, get_volume(volume_pair) / @unit[atomo]}
  end

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
