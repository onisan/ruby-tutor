def word_unscrambler(str, words)
  found = []
  words.each {|w|
    if word_sort(w) == word_sort(str)
      found.push(w)
    end
  }
  found
end

def word_sort(word)
  wa = word.chars
  wa.sort
end
