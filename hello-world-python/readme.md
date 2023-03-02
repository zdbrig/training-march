
## How build the dev environment

```docker build -t bbacem/python-flask .   ```

## How to run this project in a docker container 

```docker run -it -v `pwd`:/code -w /code -p 5001:5000 bbacem/python-flask:2 bash```

``` python hello.py ```