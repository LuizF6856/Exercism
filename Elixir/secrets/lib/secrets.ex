defmodule Secrets do 
  use Bitwise

  def secret_add(num_function), do:  
    fn num_anonimy_function ->
      num_anonimy_function + num_function 
    end 
  
  def secret_subtract(num_function), do: 
      fn num_anonimy_function ->
        num_anonimy_function - num_function
      end

  def secret_multiply(num_function), do:
      fn num_anonimy_function ->
        num_anonimy_function * num_function
      end

  def secret_divide(num_function), do: 
      fn num_anonimy_function ->
        div(num_anonimy_function, num_function)
      end
    
  def secret_and(num_function), do: 
      fn num_anonimy_function ->
        num_anonimy_function &&& num_function 
      end
  
  def secret_xor(secret) do
      fn a -> bxor(a, secret) end
  end    

  def secret_combine(f, g) do
    fn x -> f.(x) |> g.() end
  end    
end
