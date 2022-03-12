defmodule Rules do
  def eat_ghost?(power_pellet_active, touch_ghost) do
    if power_pellet_active == true and touch_ghost == true do
       true
    end
  end

  def score?(touching_a_power_pellet, touching_a_dot) do
    if touching_a_power_pellet == true or touching_a_dot == true do
        true
    end
  end

  def lose?(power_pellet_active, touching_a_ghost) do
    if power_pellet_active == false and touching_a_ghost == true do
        true
    end
  end

  def win?(eaten_all_of_the_dots, power_pellet_active, touching_a_ghost) do
    if eaten_all_of_the_dots == true and power_pellet_active == true or touching_a_ghost == false do
      true
    end
  end
end
