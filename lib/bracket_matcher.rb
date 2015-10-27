require_relative 'stack'
require 'pry'

class BracketMatcher
  def initialize(string)
    @string = string
  end

  def valid?
    output = false
    if @string.length.even?
      half_length = @string.length / 2

      for i in 1..half_length
        if corresponding_bracket(@string[i - 1], @string[-i])
          output = true
        else
          return false
        end
      end

    end
    output
  end
end

def corresponding_bracket(opening, closing)
  if opening == "(" && closing == ")"
    true
  elsif opening == "[" && closing == "]"
    true
  elsif opening == "{" && closing == "}"
    true
  else
    false
  end
end
