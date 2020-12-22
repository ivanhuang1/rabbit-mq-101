require 'hutch'

class FailedPaymentConsumer
  include Hutch::Consumer
  consume 'gc.ps.payment.failed'
  queue_name 'random'

  def process(message)
    puts message
    puts 'mark_payment_as_failed'
  end
end
