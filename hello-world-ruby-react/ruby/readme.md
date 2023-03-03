## How to run this project : 

### create the network

```docker network create --driver bridge --subnet=10.0.0.0/24  training-march```

### run python

```docker run -it -v `pwd`:/code -w /code  --network training-march --ip 10.0.0.6 --name server-python bbacem/python-flask:2 bash```

```python hello.py```

### run ruby

```docker run -it -v `pwd`:/code -w /code -p 8081:8080 --network training-march --name ruby-server --ip 10.0.0.5 bbacem/ruby-sinatra  bash```

```ruby server.rb```

