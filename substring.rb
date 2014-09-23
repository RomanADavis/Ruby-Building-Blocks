def substrings word, words
  count = {}
  for i in words
    if word.scan(i).length > 0
      count.store(i, word.scan(i).length)
    end
  end
  return count
end
