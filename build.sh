docker run --rm -it \
    -v $(pwd)/LoadscreenMute:/app/LoadscreenMute \
    -v $(pwd)/Dependencies:/tmp/Dependencies \
    -v $(pwd)/Outputs:/tmp/outputs \
    $(docker build -q .) \
        /bin/bash -c '\
            mkdir /tmp/build && 
            cd /tmp/build && 
            cp -r /app/LoadscreenMute/* . &&
            dotnet build -o bin &&
            cp bin/LoadscreenMute.dll /tmp/outputs'