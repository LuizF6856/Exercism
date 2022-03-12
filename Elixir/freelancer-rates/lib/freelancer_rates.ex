defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0
  
  def apply_discount(before_discount, discount), do: (1-(discount/100)) * before_discount 
  
  def monthly_rate(hourly_rate, discount) do
    monthlyrate =
      daily_rate(hourly_rate)
        |> apply_discount(discount)
        |> Kernel.*(22)
        |> Float.ceil(0)
      
    if(is_float(monthlyrate)) do 
      trunc(monthlyrate) 
    else 
      monthlyrate  
    end
  end
  
  def days_in_budget(budget, hourly_rate, discount) do
    price_per_day_with_discount = 
      daily_rate(hourly_rate)
        |> apply_discount(discount)
      
    Kernel./(budget, price_per_day_with_discount)
        |> Float.floor(1)  

  end
end
