## How to run this project

```docker build -t bbacem/php-mongo .```

```docker run --network training-march --ip 10.0.0.5 -p 9093:80 -it -v `pwd`:/code -w /code  bbacem/php-mongo bash```

```php -S 0.0.0.0:80```