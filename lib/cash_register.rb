
class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount=0)
    @total=0 
    @discount=discount
    @items=[]
  end 
  
  def add_item (title, price, quant=1)
    @total+=price*quant
    
  end
  
  def apply_discount
    if @discount==0
      "There is no discount to apply."
    else
      @total=@total.to_f - @total.to_f * @discount.to_f/100
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
end

