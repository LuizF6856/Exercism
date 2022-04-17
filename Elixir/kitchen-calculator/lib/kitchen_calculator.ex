defmodule KitchenCalculator do
  # Unit to convert in milliters
  @ml 1
  @cup 240
  @fluid_ounce 30
  @teaspoon 5
  @tablespoon 15

  def get_volume(volume_pair), do: elem(volume_pair, 1)

  def to_milliliter({:milliliter, _volume} = volume_pair) do
    {:milliliter, get_volume(volume_pair) * @ml}
  end

  def to_milliliter({:cup, _volume} = volume_pair) do
    {:milliliter, get_volume(volume_pair) * @cup}
  end

  def to_milliliter({:fluid_ounce, _volume} = volume_pair) do
    {:milliliter, get_volume(volume_pair) * @fluid_ounce}
  end

  def to_milliliter({:teaspoon, _volume} = volume_pair) do
    {:milliliter, get_volume(volume_pair) * @teaspoon}
  end

  def to_milliliter({:tablespoon, _volume} = volume_pair) do
    {:milliliter, get_volume(volume_pair) * @tablespoon}
  end

  def from_milliliter(volume_pair, :milliliter = unit),
    do: {unit, get_volume(volume_pair) / @ml}

  def from_milliliter(volume_pair, :cup = unit),
    do: {unit, get_volume(volume_pair) / @cup}

  def from_milliliter(volume_pair, :fluid_ounce = unit),
    do: {unit, get_volume(volume_pair) / @fluid_ounce}

  def from_milliliter(volume_pair, :teaspoon = unit),
    do: {unit, get_volume(volume_pair) / @teaspoon}

  def from_milliliter(volume_pair, :tablespoon = unit),
    do: {unit, get_volume(volume_pair) / @tablespoon}

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
