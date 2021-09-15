class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map {|item| item[:name]}.sort
    
  end

  def cheap
    @items.select {|item| item[:price] < 30.0}
    
  end

  def out_of_stock
    @items.select {|item| item[:quantity_by_size].empty?}
  end

  def stock_for_item(name)
    @items.find {|item| item[:name] == name}[:quantity_by_size]
    
    # raise 'Implement the BoutiqueInventory#stock_for_item method'
  end

  def total_stock   
    @items.reduce(0) {|total, item| total + item[:quantity_by_size].values.sum}
  
    # raise 'Implement the BoutiqueInventory#total_stock method'
  end

  private
  attr_reader :items
end
