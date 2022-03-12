defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(num), do: num - 10 

  def preparation_time_in_minutes(layers), do: layers + layers

  def total_time_in_minutes(layers, minutes), do: layers + layers + minutes

  def alarm, do: "Ding!"
end

