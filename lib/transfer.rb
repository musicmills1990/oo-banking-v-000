class Transfer

attr_accessor :sender, :receiver, :status, :amount

def initialize(sender, receiver, transwer_amount)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = 50
end


def valid?
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
end


def execute_transaction
  if @sender.valid? == true
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
  else
    @status = "Transaction rejected. Please check your account balance."
  end
end


def reverse_transfer
  binding.pry
  @sender.balance += @amount
  @receiver.balance -= @amount
  @status = "reversed"
end

end
