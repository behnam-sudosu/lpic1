#!/bin/bash

# server
apt update && apt install nfs-kernel-server nfs-common

# client
apt update && apt install nfs-common

