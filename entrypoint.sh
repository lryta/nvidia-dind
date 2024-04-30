#!/bin/bash

# Start docker
unshare -C bash -c "umount /sys/fs/cgroup/ && mount -t cgroup2 cgroup /sys/fs/cgroup/ && start-docker.sh"

# Execute specified command
"$@"
