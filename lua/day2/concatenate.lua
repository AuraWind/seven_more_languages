function concatenate(a1, a2)
  local array = {}

  for i = 1, #a1 do
    array[i] = a1[i]
  end

  local array_offset = #array
  for i = 1, #a2 do
    array[array_offset + i] = a2[i]
  end

  return array
end


-- Referenced https://forums.pragprog.com/forums/351/topics/13237
setmetatable(_G, {
  __newindex = function(table, key, value)
    rawset(table, key, value)
    setmetatable(value, { __add = concatenate })
  end
})
