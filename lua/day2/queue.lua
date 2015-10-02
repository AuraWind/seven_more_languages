Queue = {
  new = function(self)
    local obj = {
      items = {}
    }

    setmetatable(obj, self)
    self.__index = self

    return obj
  end,

  add = function(self, item)
    self.items[#self.items + 1] = item
  end,

  remove = function(self)
    local item = self.items[1]
    local new_items = {}

    for i = 2, #self.items do
      new_items[i-1] = self.items[i]
    end

    self.items = new_items
    return item
  end
}
