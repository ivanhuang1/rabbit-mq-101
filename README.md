## Start Rabbitmq server
```shell
$ docker-compose up -d
```

After server started, we can navigate to http://localhost:15672 to visit the management website.
The default username and password both are `guest`.

## Install Gem

```shell script
$ bundle
```

## Using Bunny

doc: https://github.com/ruby-amqp/bunny

guide: http://rubybunny.info/articles/getting_started.html

Try producing messages using different exchanges
```shell script
$ ruby one-to-one.rb

$ ruby one-to-many.rb

$ ruby many-to-many.rb
```

## Using Hutch

doc: https://github.com/ruby-amqp/hutch

Start consumer process
```shell script
$ bundle exec hutch --config=hutch-app/config.yml
```

Produce message
```shell script
$ ruby hutch-app/producer.rb 
```
