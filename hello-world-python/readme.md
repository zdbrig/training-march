
## How build the dev environment

```docker build -t bbacem/python-flask .   ```

## How to run this project in a docker container 

```docker run -it -v `pwd`:/code -w /code -p 5001:5000 bbacem/python-flask:2 bash```

``` python hello.py ```


![image](https://user-images.githubusercontent.com/934740/222394048-7dd841d2-187c-4674-90d7-64c8c3ebc401.png)

## here how it should look like in a browser : 

![image](https://user-images.githubusercontent.com/934740/222394452-41597620-1b57-4c5a-8446-68d5783b0659.png)
