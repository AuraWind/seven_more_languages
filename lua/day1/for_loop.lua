function for_loop(start_number, stop_number, func)
  local current_number = start_number

  while current_number <= stop_number do
    func(current_number)
    current_number = current_number + 1
  end
end
