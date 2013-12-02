def ordered_vowel_words(str)
  ord = str.split(' ')
  bad = []
  ord.each {|s|
    tmp = ""
    tmp.concat(s)
    bad.push(s) unless ordered_vowel_word?tmp
  }
  bad.each {|b| ord.delete(b) }
  return ord.join(" ").chomp #if ordered_vowel_word?str
end

def ordered_vowel_word?(word)
  chars = []
  while(word.slice(/[aeiou]/)) 
    chars.push(word.slice!(/[aeiou]/))
  end
  return true if chars.length == 1

  chars.each_with_index{|c, i|
    if i == 0
      return false if c > chars[i+1]
    else
      return false if c < chars[i-1]
    end
  }
  true
end
