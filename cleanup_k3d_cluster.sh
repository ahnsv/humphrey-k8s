#!/bin/bash

read -p 'k3d cluster name: ' clustername
k3d cluster delete $clustername 