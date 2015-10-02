function add(previous, next)
  return previous + next
end

function multiply(previous, next)
  return previous * next
end

function reduce(max, init, f)
  local current = init

  for i = 1, max do
    current = f(current, i)
  end

  return current
end

function factorial(number)
  return reduce(number, 1, multiply)
end
