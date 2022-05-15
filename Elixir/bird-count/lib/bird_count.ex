defmodule BirdCount do
  def today([]), do: nil
  def today([h |_list]), do: h

  def increment_day_count([]), do: [1]
  def increment_day_count([h | list]), do:  [h + 1 | list]

  def has_day_without_birds?(list), do: if 0 in list, do: true, else: false

  def total([]), do: 0
  def total([h | list]), do: h + total(list)

  def busy_days([]), do: 0
  def busy_days([h | list]) when h >= 5, do: 1 + busy_days(list)
  def busy_days([h | list]) when h < 5, do: busy_days(list)
end
