def wonky_coins(n)
  return 1 if n == 0
  accum = 0 
  [2,3,4].each{|c|
    rem = (n/c).floor
    accum += 1 if rem == 0
    accum += wonky_coins(rem) if rem != 0
  }
  accum
end
