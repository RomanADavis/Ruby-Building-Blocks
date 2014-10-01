def bubble_sort nums
  do_it_again = false
  nums[0...-1].each_with_index do |item, index|
    if nums[index] > nums[index + 1]
      nums[index], nums[index + 1] = nums[index + 1], nums[index]
      do_it_again = true
    end
  end
  bubble_sort nums if do_it_again
  nums
end

def bubble_sort_by nums, &block
  do_it_again = false
  nums[0...-1].each_with_index do |item, index|
    if yield(nums[index], nums[index + 1]) < 0
      nums[index], nums[index + 1] = nums[index + 1], nums[index]
      do_it_again = true
    end
  end
  bubble_sort_by nums, &block if do_it_again
  nums
end

puts bubble_sort_by(["hi","hello","hey"]) {|left,right| right.length - left.length }