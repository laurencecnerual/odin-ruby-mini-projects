def bubble_sort(arr)
  changeCount = 0

  arr.each_with_index do |val, index|
    if index < arr.length - 1 && val > arr[index + 1]
      temp = arr[index]
      arr[index] = arr[index + 1]
      arr[index + 1] = temp
      changeCount += 1
    end
  end

  if changeCount > 0
    bubble_sort(arr)
  else
    arr
  end
end

# example usage
# p bubble_sort([4,3,78,2,0,2])
# p bubble_sort([17,3,6,9,15,8,6,1,10])

# example output
# [0, 2, 2, 3, 4, 78]
# [1, 3, 6, 6, 8, 9, 10, 15, 17]