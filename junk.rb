
def left_side(num_of_discs)
  num_of_discs = (num_of_discs * 2) + 1
  puts "|".center(num_of_discs)

  (num_of_discs).times do |i|
    line = ("_" * i)
    puts line.center(num_of_discs) + "|".rjust(6) + "|".rjust(num_of_discs) if i.odd?
  end

  puts "|".center(num_of_discs, "-") + "|".rjust(6, "-") + "|".rjust(num_of_discs, "-") + "-" * 5
end

if __FILE__ == $0
  left_side(7)
end
