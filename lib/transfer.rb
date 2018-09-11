class Transfer

attr_accessor :sender, :receiver, :status, :transfer_amount

def initalize
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @transfer_amount = transfer_amount
end
