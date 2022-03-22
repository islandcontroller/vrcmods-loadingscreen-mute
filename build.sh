docker run --rm -it \
    -v $(pwd)/LoadscreenMute:/app/LoadscreenMute \
    -v $(pwd)/Dependencies:/tmp/Dependencies \
    -v $(pwd)/Outputs:/app/Outputs \
    $(docker build -q --target build .devcontainer) \
        /bin/bash -c '\
            mkdir /tmp/Build && 
            mkdir /tmp/Outputs &&
            cd /tmp/Build && 
            cp -r /app/LoadscreenMute/* . &&
            dotnet build &&
            cp /tmp/Outputs/LoadscreenMute.dll /app/Outputs'