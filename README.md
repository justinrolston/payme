payme
=====
[![Build Status](https://travis-ci.org/justinrolston/payme.svg?branch=master)](https://travis-ci.org/justinrolston/payme)


starter sinatra app

#Start the Service
 ```
 bundle exec rackup -p 9292 config.ru
 ```
#Goto:
http://localhost:9292/form


#cURL:
##Post:
``` 
curl --data "message=HelloCurl" http://localhost:9292/form
```

##Get:
```
curl  http://localhost:9292/form
```
