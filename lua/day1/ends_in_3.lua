function ends_in_3(num)
  local num_as_string = tostring(num)
  return string.sub(num_as_string, #num_as_string) == '3'
end
