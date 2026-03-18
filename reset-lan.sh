# 1. Quick confirmation the router itself is reachable
ping -c 4 192.168.0.1
nmcli con show
ip neigh show dev enp195s0f0 | grep 192.168.0.1

# 2. Full clean + DHCP renew (this fixes 90% of these cases)
echo ">ip flush"
sudo ip neigh flush all
sudo ip route flush cache

echo ">ip link reset"
sleep 3
sudo ip link set enp195s0f0 down
sleep 3
sudo ip link set enp195s0f0 up
sleep 3

echo ">nmcli reset"
sleep 3
nmcli con down netplan-enp195s0f0
sleep 3
nmcli con up netplan-enp195s0f0
sleep 3
# 3. Clear any Tailscale or firewall state
echo "tailscale service reset"
sudo systemctl restart tailscaled

echo "ip route flash cache"
sudo ip route flush cache

echo "fluch chaip ip filter"
sudo nft flush chain ip filter OUTPUT 2>/dev/null || true

# 4. Final DNS flush
echo "final DNS flush"
sudo resolvectl flush-caches

echo "new network info"
ip addr show
ip route show
nmcli show
