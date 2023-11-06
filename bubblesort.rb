##
# The bubble_sort function takes an array as input and sorts it in ascending order using the bubble sort algorithm.
#
# Args:
#   array: The parameter "array" is an array of elements that you want to sort using the bubble sort algorithm.
#
# Returns:
#   The bubble_sort method returns the sorted array.
def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1

  loop do
    swapped = false
    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if !swapped
  end
  array
end

data = [10, 2, 6, 2, 1, 5, 8, 6, 0, 2, 8, 9]

p bubble_sort(data)
