class Item
  attr_accessor :name, :price

  @@item={}

  def initialize(name,price)
    @name = name
    @price = price
    @@item[name]=price
  end

  def self.item
    @@item
  end
end
