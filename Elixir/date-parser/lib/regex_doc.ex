defmodule RegexDoc do
  # REGULAR EXPRESSIONS - REGEX
  # Note - Operador =~ é útil para executar uma correspondência regex em uma string.
  # iex> "test" =~ ~r/test/
  # true

  # CHARACTER CLASSES
  # Abreviações das classes de caracteres em uma correspondência regex.
  # \d - abreviação de [0-9](qualquer digito)
  # \w - abreviação de [A-Za-z0-9_](qualquer caractere de 'palavra')
  # \s - abreviação de [\t\r\n\f](qualquer caractere de espaço em branco)

  # ALTERNATIONS
  # Alternations use | as a special character to denote matching one or another
  # Ex, regex = ~r/felipe|luiz/; "felipe" =~ regex = true; "luiz" =~ regex = true.

  # Quantifiers
  # ? - Não entendi muito bem sobre, não teve muitos exemplos.

  # GROUP
  # Os colchetes () São usados para indicar grupos e capturas.
  # iex> regex = ~r/f(e)lipe/
  # iex> |> Regex.replace("felipe", "\\1lefante")
  # "elefante"

  # CAPTURE
  # As capturas são nomeadas anexando ?<name>após o parêntese de abertura.
  # iex> regex = ~r/(?<agostinho_carrara>e)/
  # iex> |> Regex.scan("elefante", capture: :all_names)
  # [["e"], ["e"], ["e"]]

  # ANCHORS
  # As âncoras são usadas para vincular a expressão regular ao início ou ao final da string a ser correspondida:
  # ^ âncoras no início da string
  # $ âncoras no final da corda

  # INTERPOLATION
  # Because the ~r is a shortcut for "pattern" |> Regex.escape() |> Regex.compile!()
  # anchor = "$"
  # regex = ~r/end of the line#{anchor}/
  # ~r/end of the line$/
  # iex> "end of the line?" =~ regex
  # false
  # iex> "end of the line" =~ regex
  # true
end
