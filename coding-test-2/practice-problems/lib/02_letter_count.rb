def letter_count(str)
  count = {}
  str.each_char {|c|
    next if c == ' '
    count[c] = str.count(c)
  }
  count
end
