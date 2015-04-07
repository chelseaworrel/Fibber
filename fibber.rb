require 'pry'

class Fibber

  def initialize(quantity=0)
    @quantity = quantity
  end

  def generate
    output = []
    if @quantity == 0
      output = []
    elsif @quantity == 1
      output = [0]
    elsif @quantity == 2
      output = [0,1]
    else
      output = (@quantity - 2).times.reduce([0,1]) do |sequence|
        sequence << sequence[-1] + sequence[-2]
      end
    end
    puts string_format(output)
    output
  end

  def string_format(output)
    final_string = ""
    output.each_with_index do |number, index|
      if (index + 1) % 5 == 0
        final_string += number.to_s + "\n"
      else
        final_string += number.to_s
      end
    end
    final_string
  end
end


#take output array and format so that every 5th index it splits on a \n




#   def fibo(n)
#   a = 0
#   b = 1
#   results = []
#   for i in 0..n
#     results.push(a)
#     c = a + b
#     a = b
#     b = c
#   end
#   results
#   end
# end
#
# puts fibo(15)

# The Fibbonacci sequence is a simple numeric sequence that comes up
# frequently in Computer Science and design tasks.
# Let 's write a generator that can tell us an arbitrary quantity
# of numbers in the sequence.

#going to build code that takes in a quantity (a number of outputs)
#and goes through the generator to create x outputs using the counter
#works by:
#start with 0 and 1 (array? you can use position?)
# then add position [0] + [1]
#
# Theory
#
# The sequence begins with the numbers 0 and 1. From there,
# each element is the sum of the previous two elements.
#
# Start with 0 and 1
# 0 plus 1 is (1)
# 1 plus 1 is (2)
# 1 plus 2 is (3)
# 2 plus 3 is (5)
# 3 plus 5 is (8)
# 5 plus 8 is (13)
# 8 plus 13 is (21)
# So the sequence starts 0, 1, 1, 2, 3, 5, 8, 13, 21.
#
# Template
#
# quantity = 15

# your code here

# Output should come in rows of five elements.
# Running the program with quantity set to fifteen would output the following:
#
# 0 1 1 2 3
# 5 8 13 21 34
# 55 89 144 233 377