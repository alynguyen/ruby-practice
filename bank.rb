class Account
  
  attr_reader :name
  attr_reader :balance

  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  public
  
  def display_balance(pin_number)
    pin_number == @pin ? puts "Balance: $#{@balance}" : pin_error
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
  
end