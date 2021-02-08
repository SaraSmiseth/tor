# tor

This is a docker container for tor.

## Persist tor data

In this image the tor user has uid 100 and group 65533.
If you want to bind mount a folder to persist keys etc. you have to change the owner of that directory.
Change it with the following command:

``` shell
chown 100:65533 data
```

To get the user id and group id of the tor user run `id tor` inside the container.
