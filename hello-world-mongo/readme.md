## How to run database

```docker run -it --network training-march --ip 10.0.0.100 -v `pwd`/data:/data/db -v `pwd`/init.js:/docker-entrypoint-initdb.d/init.js mongo```

