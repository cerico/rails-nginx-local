## What is it?

So you don't like pow or alternatives, so why not just run nginx like you do in production?

## How do I run it?

Clone this repo and then

```
make setup
``` 
or

```
chmod a+x setup.sh && ./setup.sh
```

and browse to http://rentify.test or http://rentify.local


## What is it doing?

Installs nginx and passenger

Adds entries to your hostfile

Adds the suppled nginx.conf with suppled passenger module

Adds an entry for rentify.test / rentify.local

Starts nginx

## Troubleshooting

You may still have pow installed, and test is now a valid domain, so try rentify.local instead

Make sure you're accessing on http not https

## To do

https
