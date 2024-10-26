FROM docker.io/jlesage/makemkv:v24.07.1

# replace the used eject command - see https://github.com/jlesage/docker-makemkv/issues/171
RUN sed -i 's/eject "$DRV_DEV"/busybox eject "$DRV_DEV"/' /opt/makemkv/bin/autodiscripper
