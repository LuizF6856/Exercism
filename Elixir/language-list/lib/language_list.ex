defmodule  LanguageList  do 
  def new, do: []
  
  def add(language_list, language), do: [language | language_list]

  def remove(language) do 
    [head | tail] = language    
    tail
  end

  def first(language) do
    [head | tail] = language 
    head
  end

  def count(language_list), do: Enum.count(language_list)

  def exciting_list?(language_list) do
     if ("Elixir" in language_list), do: true, else: false 
  end
end