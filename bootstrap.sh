#!/bin/sh
source .env
#TODO: add aws commands to create user, s3 state and route53 hosted zone

echo cluster name: $NAME
echo cluster state store: $KOPS_STATE_STORE
echo cluster zones: $ZONES

kops create cluster \
	--zones $ZONES \
    --node-count=3 \
    --node-size=t2.micro \
    --master-size=t2.micro \
    --dns-zone=$NAME \
    --name=$NAME \
    --state=$KOPS_STATE_STORE