def solve(num)
  left = (1..num).to_a.reverse
  middle = []
  right = []

  if left.length == 1
    right << left.pop
    result = [left, middle, right]

  elsif left.length == 2
    middle << left.pop
    right << left.pop
    right << middle.pop
    result = [left, middle, right]

  else
    result = solve_it(left, middle, right)
  end

  puts "left: #{result[0].inspect}"
  puts "middle: #{result[1].inspect}"
  puts "right: #{result[2].inspect}"
end

def solve_it(left, middle, right)
  if left.length == 0 && middle.length == 0
    [left, middle, right]

  else
    middle << left.pop
    right << left.pop
    right << middle.pop



end

if __FILE__ == $0
  solve(10)
end
