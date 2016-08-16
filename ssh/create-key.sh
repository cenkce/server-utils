#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C $1
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub