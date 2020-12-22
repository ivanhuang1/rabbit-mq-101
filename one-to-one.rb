require "bunny"

STDOUT.sync = true

# connects to RabbitMQ running on localhost, with the default port (5672), username ("guest"), password ("guest") and virtual host ("/").
conn = Bunny.new
conn.start

ch = conn.create_channel

q = ch.queue("bunny.examples.hello_world", :auto_delete => true)
q.subscribe do |delivery_info, metadata, payload|
  puts "Received #{payload}"
end

x = ch.default_exchange
x.publish("H111ello!", :routing_key => q.name)

sleep 1.0
conn.close
