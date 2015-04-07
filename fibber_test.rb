gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'fibber'

class FibberTest < Minitest::Test
  def test_it_exsists
    assert Fibber.new
  end

  def test_it_starts_with_an_empty_array
    fib = Fibber.new
    assert_equal [], fib.generate
  end

  def test_it_can_generate_first_number
    fib = Fibber.new(1)
    assert_equal [0], fib.generate
  end

  def test_it_can_generate_second_number
    fib = Fibber.new(2)
    assert_equal [0,1], fib.generate
  end

  def test_it_can_generate_the_third_number
    fib = Fibber.new(3)
    assert_equal [0,1,1], fib.generate
  end

  def test_it_can_generate_the_sixth_number
    fib = Fibber.new(6)
    assert_equal [0,1,1,2,3,5], fib.generate
  end

  def test_it_can_format_an_array
    fib = Fibber.new(5)
    assert_equal "01123\n", fib.string_format([0,1,1,2,3])
  end

  # def test_it_can_output_jagged_style
  #   skip
  #   fib = Fibber.new(15)
  #   assert_equal
  #   [0 1 1 2 3
  #    5 8 13 21 34
  #    55 89 144 233 377], fib.generate
  # end
end


#tests:
# #fib(0) would be an empty array []
#fib(1) would be zero [0]
#fib(2) would be [0,1]
#test it takes in a quantity : n
