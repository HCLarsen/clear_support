class Array(T)
  # Combines multiple arrays of the same Type by alternating values in
  # the order in which they're placed.
  #
  # Raises a compile-time if arrays are of different types.
  #
  # ```
  # require "clear_support"
  #
  # array = Array.interlace([1, 1, 1], [2, 2, 2], [3, 3, 3])
  # array                #=> [1, 2, 3, 1, 2, 3, 1, 2, 3]
  #
  # ```
  #
  def self.interlace(*arrays : Array(T)) : Array(T)
    output_array = Array(typeof(arrays[0][0])).new
    num = arrays.size
    length = arrays.reduce(0) { |acc, i| acc + i.size }
    max_length = arrays.max_of { |arr| arr.size }

    max_length.times do |i|
      arrays.each do |array|
        if array[i]?
          output_array << array[i]
        end
      end
    end

    output_array
  end
end
