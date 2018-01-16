The site is in the apps directory. Based on cryogen.

Built with `./build.sh`, started with `./start.sh` and will stay running after reboot... stopped with `./stop.sh`.

The running service will rebuild changes, although it takes about 2 minutes on the RasPi and makes content unavailabile.

In order to address this, we can create a snapshot with `./build-static.sh` and run that using `./start-static.sh` (heh) and `./stop-static.sh`.

The static service uses the same Python module that we use for the v1 service.
