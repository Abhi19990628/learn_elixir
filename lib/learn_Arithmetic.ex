defmodule LearnElixir.LearnArithmetic do

  def run do
    # Integers
# Support for binary, octal, and hexadecimal numbers comes built in:

plus = 2 + 2
IO.puts(plus)

minus = 4 - 2
IO.puts(minus)

div = div(10 , 2)
IO.puts(div)

mul = 10 * 2
IO.puts(mul)

a = 10
b = 2

# Corrected line
IO.puts("adding 2 integers: #{a+b}")
IO.puts("minus 2 integers: #{a-b}")
IO.puts("div of  interger: #{a/b}")
IO.puts("mul 2 interger : #{a*b}")



abhi = rem(10 , 3)
IO.puts(abhi)

  end
end
