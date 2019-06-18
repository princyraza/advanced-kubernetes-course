#!/bin/sh
source .env
kops delete cluster --name ${NAME} --state $KOPS_STATE_STORE --yes