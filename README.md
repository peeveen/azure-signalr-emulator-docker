# Azure SignalR emulator Docker image

Available from [Docker Hub](https://hub.docker.com) as `peeveen/azure-signal-emulator`.

To build:

```bash
docker build -t IMAGENAME .
```

To run:

```bash
docker run -v ./myconfigfolder:/config -e UPSTREAM_CONFIG_FILE=kite-settings.json -p 8888:8888 IMAGENAME
```

Map a folder containing your config file(s) using `-v`.

`UPSTREAM_CONFIG_FILE` is the name of the config file within the mapped folder that the emulator should use. Default is `settings.json`.

Emulator is listening on port 8888 internally. You can map it to any external port you wish using `-p`.
