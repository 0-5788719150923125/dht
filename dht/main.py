import hivemind
import time

dht = hivemind.DHT(
    host_maddrs=["/ip4/0.0.0.0/tcp/4002", "/ip4/0.0.0.0/udp/4002/quic"],
    start=True)

print('\n'.join(str(addr) for addr in dht.get_visible_maddrs()))
print("Global IP:", hivemind.utils.networking.choose_ip_address(dht.get_visible_maddrs()))

while True:
    time.sleep(1)