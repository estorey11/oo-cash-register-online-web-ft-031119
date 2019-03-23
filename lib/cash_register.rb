
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=0)
    @total=0 
    @discount=discount
  end 
  
  def add_item (title, price, quant=1)
    @total+=price*quant
  end
  
  def apply_discount
    @total=@total.to_f - @total.to_f * @discount.to_f/100
  end
end

