def substrings string, dict
  count = Hash.new{0}
  string = string.split
  for i in dict
    for word in string 
      if word.scan(i).length > 0
        count[i] += word.scan(i).length
      end
    end
  end
  return count
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)