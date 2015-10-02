function retry(count, body)
  local retries = 0
  local body_runner

  while retries <= count do
    body_runner = coroutine.create(body)
    status, value = coroutine.resume(body_runner)

    if type(value) ~= 'string' then
      return
    end

    retries = retries + 1
  end

  print 'Failed'
end

function test_body()
  if math.random() > 0.2 then
    coroutine.yield('Something bad happened')
  end
  print('Succeeded')
end
