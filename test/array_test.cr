require "minitest/autorun"

require "/../src/clear_support/array.cr"

class ArrayTest < Minitest::Test
  def test_interlaces_arrays
    array = Array.interlace([1, 1, 1], [2, 2, 2], [3, 3, 3])
    assert_equal [1, 2, 3, 1, 2, 3, 1, 2, 3], array
  end

  def test_interlaces_string_arrays
    array = Array.interlace(["one", "one", "one"], ["two", "two", "two"], ["three", "three", "three"])
    assert_equal ["one", "two", "three", "one", "two", "three", "one", "two", "three"], array
  end
end
