#!/bin/sh

hivemind-dht \
    --use_ipfs \
    --use_auto_relay \
    --refresh_period 30 \
    --host_maddrs \
    "/ip4/0.0.0.0/tcp/4002,/ip4/0.0.0.0/udp/4002" \
    # --announce_maddrs \
    # "/ip4/0.0.0.0/tcp/4002,/ip4/0.0.0.0/udp/4002" \
    --identity_path /data/identity.key \
    
