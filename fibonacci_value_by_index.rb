def fibonacci_value_by_index(n)
  return nil unless n.instance_of?(Integer) && n >= 0
  return 0 if n == 0
  return 1 if n == 1

  sequence = [0, 1]
  index = 2

  while sequence[n].nil?
    sequence << sequence[index - 1] + sequence[index - 2]
    index += 1
  end

  sequence[n]
end