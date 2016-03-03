require 'pry'

def solve(num_of_discs)
  left = (1..num_of_discs).to_a.reverse
  middle = []
  right = []

  if left.length == 1
    right << left.pop
    results = [left, middle, right]
  else
    results = solve_it(num_of_discs, left, middle, right)
  end
  puts "left: #{results[0].inspect}"
  puts "middle: #{results[1].inspect}"
  puts "right: #{results[2].inspect}"
end

def solve_it(num, left, middle, right)
  if right.length == num
    [left, middle, right]
  else
    right << left.pop if left.length > 0
    middle << left.pop if left.length > 0
    middle << right.pop if middle.length > 0
    right << left.pop if left.length > 0
    # x = [left, middle, right]
    # binding.pry
    if left.length == 0
      result = middle_to_right(left, middle, right)
      # binding.pry
    else
      result = middle_to_left(left, middle, right)
      # binding.pry
    end
    solve_it(num, result[0], result[1], result[2])
  end
end

def middle_to_left(left, middle, right)
  if middle.length == 0
    [left, middle, right]
  else
    right << middle.pop
    left << middle.pop
    left << right.pop
    middle_to_left(left, middle, right)
  end
end

def middle_to_right(left, middle, right)
  if left.length == 0 && middle.length == 0
    [left, middle, right]
  else
    left << middle.pop
    right << middle.pop
    right << left.pop
    middle_to_right(left, middle, right)
  end
end


if __FILE__ == $0
  solve(3)
end
