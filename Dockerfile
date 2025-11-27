FROM mcr.microsoft.com/dotnet/sdk
ENV UPSTREAM_CONFIG_FILE=settings.json
RUN dotnet tool install Microsoft.Azure.SignalR.Emulator
RUN mkdir /config
WORKDIR /config
RUN dotnet tool run asrs-emulator upstream init
WORKDIR /
ENTRYPOINT ["/bin/bash", "-c","dotnet tool run asrs-emulator start --ip 0.0.0.0 --port 8888 --config /config/${UPSTREAM_CONFIG_FILE}"]
