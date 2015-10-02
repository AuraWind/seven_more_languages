dofile 'ends_in_3.lua'
dofile 'is_prime.lua'

function primes_ending_in_3(count)
  local printed = 0
  local current_number = 1

  while printed < count do
    if ends_in_3(current_number) and is_prime(current_number) then
      print(current_number)
      printed = printed + 1
    end

    current_number = current_number + 1
  end
end
