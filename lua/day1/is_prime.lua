function is_prime(number)
  if number == 1 then return false end
  for i = 2, number-1 do
    if number % i == 0 then
      return false
    end
  end
  return true
end
