#!/bin/bash

read -p 'k3d cluster name: ' clustername
read -p '# of Servers: [e.g., 3]' numofservers
read -p '# of Agents: [e.g., 3]' numofagents

k3d cluster create $clustername \
 --servers $numofservers \
 --agents $numofagents \
 --k3s-server-arg --no-deploy\
 --k3s-server-arg traefik \
 --registry-create