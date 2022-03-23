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
echo "md5sum     $(md5sum ./Outputs/LoadscreenMute.dll | awk '{ print $1 }')"
echo "sha256sum  $(sha256sum ./Outputs/LoadscreenMute.dll | awk '{ print $1 }')"