class Transfer

attr_accessor :sender, :receiver, :status, :amount

def initialize(sender, receiver, transwer_amount)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = 50
end


def valid?
  binding.pry
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
end


def execute_transaction
  if self.valid? == true
    binding.pry
    @receiver.balance += @amount
    @status = "complete"
  else
    "Transaction rejected. Please check your account balance."
  end
end


def reverse_transfer
end


end
