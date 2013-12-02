#!/etc/bin/ruby env

a = "something"
c=[]
while a.slice(/[aeiou]/)
  c.push(a.slice!(/[aeiou]/))
end
puts("#{c}")
c.each_with_index{|d, i|
  if i == 0
    puts("false") if d > c[i+1]
  else
    puts("false") if d < c[i-1]
  end
}
