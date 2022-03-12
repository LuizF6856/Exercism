defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    
    cond do
      0 == level and false == legacy? -> :trace
      
      1 == level and true >= legacy? -> :debug 
      2 == level and true >= legacy? -> :info 
      3 == level and true >= legacy? -> :warning 
      4 == level and true >= legacy? -> :error 
      
      5 == level and false == legacy? -> :fatal
      
      true -> :unknown
    end 
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function

    cond do
      6 == level and false == legacy? -> :dev2
      5 == level and false == legacy? -> :ops
      
      4 == level and true >= legacy? -> :ops

      3 == level and true >= legacy? -> nil
      2 == level and true >= legacy? -> nil
      1 == level and true >= legacy? -> nil
      
      0 == level and false == legacy? -> nil

      true -> :dev1
    end
  end
end