def ceaser_cypher string, num
  caps = ('A'..'Z')
  lower = ('a'..'z')
  list = string.split("")
  list.map! do |i|
    if caps.include? i
      (((i.ord + num - 64) % 26) + 64).chr
    elsif lower.include? i
      (((i.ord + num - 96) % 26) + 96).chr
    else
      i
    end
  end
  list.join("")
end

puts ceaser_cypher("What a string!", 5)