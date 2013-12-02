def morse_encode(str)
  #split the string on every space
  wordArr = str.split(' ')
  ms = ""
  #morse encode each word in the word array
  wordArr.each {|w|
    #only concat the morse code conversion 
    ms.concat(morse_encode_word(w)) if wordArr.length == 1 or w == wordArr.last
    #concat the conversion and a space (separate words need 2 spaces)
    ms.concat(morse_encode_word(w) + ' ') if wordArr.length > 1 and w != wordArr.last
  }
  ms.chomp(' ')
end

def morse_encode_word(word)
  #hash mapping the letters to their morse code conversion
  mh = {
    'a' => ".-", 'b' => "-...", 'c' => "-.-.", 'd' => "-..",
    'e' => ".", 'f' => "..-.", 'g' => "--.", 'h' => "....",
    'i' => "..", 'j' => ".---", 'k' => "-.-", 'l' => ".-..",
    'm' => "--", 'n' => "-.", 'o' => "---", 'p' => ".--.",
    'q' => "--.-", 'r' => ".-.", 's' => "...", 't' => "-",
    'u' => "..-", 'v' => "...-", 'w' => ".--", 'x' => "-..-",
    'y' => "-.--", 'z' => "--.."
  }
  ms = ""
  word.each_char {|c|
    #only concat the conversion if word has 1 letter
    ms.concat(mh[c]) if word.length == 1
    #concat conversion + space if word has 2+ letters
    ms.concat(mh[c] + ' ') if word.length > 1
  }
  ms
end
