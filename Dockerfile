FROM docker.io/jlesage/makemkv:v25.02.3

# replace the used eject command - see https://github.com/jlesage/docker-makemkv/issues/171
RUN sed -i 's/eject "$DRV_DEV"/busybox eject "$DRV_DEV"/' /opt/makemkv/bin/autodiscripper
