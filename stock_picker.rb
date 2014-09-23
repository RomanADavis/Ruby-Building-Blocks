def lowest nums
  while nums.length > 1
    if nums[0] > nums[1]
      nums.shift
    else
      nums.delete_at(1)
    end
  end
  nums[0]
end

def stock_picker week
  biggest = week[1] - week[0]
  to_sell, to_buy = 1 , 0
  week.each_with_index do |day, i|
    if i > 1
      low = lowest(week[0..i])
      if day - low > biggest
        biggest = day - low
        to_buy = week.index(low)
        to_sell = i
      end
    end
  end
  return [to_buy, to_sell]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])