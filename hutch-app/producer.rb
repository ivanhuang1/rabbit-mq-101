require 'hutch'

Hutch.connect

routing_key = 'gc.ps.payment.failed'
payload = {subject: 'payment', action: 'received'}
Hutch.publish(routing_key, payload)
