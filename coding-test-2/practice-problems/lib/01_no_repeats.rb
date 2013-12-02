def no_repeats(year_start, year_end)
  nr = []
  for year in (year_start..year_end) do
    nr.push(year) if no_repeat?year.to_s
  end
  nr
end

def no_repeat?(year)
  c = year.chars
  d = year.chars
  c.each_with_index {|f, ind|
    d.each_with_index {|g, out|
      return false if (f == g and ind != out)
    }
  }
  true
end
