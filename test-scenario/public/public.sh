ip netns exec tilon
ip netns exec tilon ifconfig
ip netns exec tilon ping 221.195.251.153
ip netns exec tilon route -n
ip netns exec tilon ping 221.195.251.154
ip netns exec tilon ip route show
ip netns exec tilon ping 221.195.251.154
ip netns exec tilon ping 221.195.251.153
ip netns exec tilon ssh root@ 221.195.251.153
ip netns exec tilon ssh root@221.195.251.153
ip netns exec tilon ip route show
ip netns exec tilon route -n
ip netns exec tilon ip route del 211.196.251.152/30 dev eth2
ip netns exec tilon ip route add 211.196.251.0/24 dev eth2
ip netns exec tilon route -n
ip netns exec tilon ping 221.195.251.153
ip netns exec tilon route -n
ip netns exec tilon ip route del 211.196.251.152/30 dev eth2
ip netns exec tilon ip route add 211.196.251.0/24 via 221.151.188.254 dev eth2
ip netns exec tilon ip route show
ip netns exec tilon route -n
ip netns exec tilon ip route del 211.196.251.0/24 dev eth2
ip netns exec tilon ip route add 211.196.251.0/24 via 221.151.188.254 dev eth2
ip netns exec tilon route -n
ip netns exec tilon ping 221.195.251.153
ip netns exec tilon ping 221.195.251.154
ip netns exec tilon ifconfig
ip netns exec tilon ping 211.196.251.254
ip netns exec tilon ping 211.196.251.154
ip netns exec tilon ping 211.196.251.153
ip netns exec tilon route -n
ip netns exec tilon ping 221.196.251.154
ip netns exec tilon ping 211.196.251.154
ip netns exec tilon ping 211.193.42.51
exit
route -n
ifconfig
brctl show
exit
telnet 211.193.42.27 1001
ls
ip netns
ip netns exec tilon ifconfig
ip netns exec tilon ping 211.196.251.154
ip netns exec tilon ping 211.193.42.27
ip netns exec tilon telnet 211.193.42.27 1001
ip netns exec tilon ping 211.193.42.27
ip netns exec tilon telnet 211.193.42.27 1001
ip netns exec tilon ping 211.193.42.27
ip netns exec tilon telnet 211.193.42.27 80
ip netns exec tilon telnet 211.193.42.27 43315
ip netns exec tilon telnet 211.193.42.27 80
exit
telnet 211.193.42.27 1001
ip netns
ip netns exec tilon route -n
ip netns exec tilon ping 211.193.42.27
ip netns exec tilon ping 211.193.42.28
ip netns exec tilon telnet 211.193.42.28 1001
ip netns exec tilon wget http://211.193.42.28:1001
ip netns exec tilon telnet 211.193.42.28 1001
ip netns exec tilon telnet 211.193.42.28
ip netns exec tilon telnet 211.193.42.28 1001
ip netns exec tilon route -n
ip netns exec tilon telnet 211.193.42.28
ip netns exec tilon telnet 211.193.42.27
ip netns exec tilon ping 211.193.42.27
ip netns exec tilon ping 211.193.42.28
ip netns exec tilon arp -n
ip netns exec tilon ip route show
ip netns exec tilon ping 211.193.42.28
ip netns exec tilon telnet 211.193.42.28 1001
ip netns exec tilon telnet 211.193.42.28
ip netns exec tilon ping -c 2 211.193.42.28
ip netns exec tilon wget 211.193.42.28 1001
ip netns exec tilon wget http://211.193.42.28:1001
ip netns exec tilon wget http://211.193.42.28:20
ip netns exec tilon wget http://211.193.42.28:80
ip netns exec tilon wget http://211.193.42.28:1001
clear
ip netns exec tilon wget http://211.193.42.28:1001
ip netns exec tilon wget http://211.193.42.28:80
ip netns exec tilon telnet 211.193.42.28 80
ip netns exec tilon telnet 211.193.42.28 1001
ip netns exec tilon telnet 211.193.42.28 80
ip netns exec tilon telnet 211.193.42.28 22
ip netns exec tilon telnet 211.193.42.28 10443
ip netns exec tilon telnet 211.193.42.28 1001
ip netns exec tilon telnet 211.193.42.28 80
ip netns exec tilon telnet 211.193.42.28 1001
ip netns exec tilon telnet 211.193.42.27 1001
ip netns exec tilon telnet 211.193.42.28 1001
ip netns exec tilon telnet 211.193.42.27 1001
ip netns exec tilon telnet 211.193.42.28 1001
ssh 10.0.0.202
ssh 10.0.0.225
ssh 10.0.0.222
telnet 10.0.0.31
exit
ip netns exec tilon wget http:10.10.3.11:1001
ip netns exec tilon wget http://10.10.3.11:1001
ip netns exec tilon wget http://211.193.42.27:1001
ip netns exec tilon telnet 211.193.42.27 1001
ip netns exec tilon wget http://211.193.42.24:43315
ip netns exec tilon telnet 211.193.42.24 43315
ip netns exec tilon telnet 211.193.42.27 1001
ip netns exec tilon telnet 211.193.42.24 43315
ip netns exec tilon wget http://211.193.42.24:43315
telnet 211.193.42.27 1001
history
telnet 211.193.42.27 1001
ip netns exec tilon telnet 211.193.42.27 1001
ip netns exec tilon wget http://211.193.42.27:1001
brctl show
tcpdump -i em2 -ne -l
tcpdump -i em2 -ne -l arp or icmp
ps ax | grep ping
tcpdump -i em2 -ne -l arp or icmp
ip netns
tcpdump -i em2 -ne -l arp or icmp
brctl show
tcpdump -i em2 -ne -l arp or icmp
exit
route -n
ip netns
ip netns exec tilon ifconfig
ip netns exec tilon route -n
ip netns exec tilon ip route add 211.196.251.128/30 via 211.196.251.130
ip netns exec tilon ip route add 211.196.251.128/30 via 221.151.188.1
ip netns exec tilon ping 221.151.188.1
ip netns exec tilon ping 221.151.188.254
ip netns exec tilon ip route del 211.196.251.128/30
ip netns exec tilon ip route add 211.196.251.128/30 via 221.151.188.254
ip netns exec tilon ping 221.151.188.254
ip netns exec tilon ping 211.193.42.70
ip netns exec tilon ping 211.196.251.130
ip netns exec tilon iperf -s -i 1
iperf
apt-get install -y iperf
ip netns exec tilon iperf -s -i 1
apt-get install nginx
ip netns exec tilon netstat -tlpn
netstat -tlpn
service nginx stop
ip netns exec tilon service nginx start
ip netns exec tilon netstat -tlpn
exit
ps -ef | grep tcpdump
eixt
exit
ps -ef | grep tcpdump
kill -9 18435
ps -ef | grep tcpdump
exit
ps -ef | grep ssh
ps -ef | grep tcpdump
ifconfig -em1
ifconfig -a
ps -ef | grep tcpdump
exi
exit
ps -ef | grep tcpdump
exit
ifconfig
ps -ef | grep ssh
kill -9 21630
kill -9 21679
kill -9 21780
ps -ef | grep ssh
kill -9 21998
ps -ef | grep ssh
kill -9 22153
ps -ef | grep ssh
ps -ef | grep tcpdump
kill -9 22328
ps -ef | grep tcpdump
kill -9 22453
ps -ef | grep tcpdump
ip netns
ip netns exec tilon ifconfig
ip netns exec tilon tcpdump -i eth2 -ne -l
route -n
brctl show
tcpdump -i em2 -ne -l
ip netns
ip netns exec tilon route -n
tcpdump -i em2 -ne -l
ip netns
ip netns exec tilon
ip netns exec tilon ifconfig
ip netns exec tilon route -n
ip netns exec tilon ping 211.196.251.130
exit
ip netns
ip netns
ip netns exec tilon ifconfig
ip netns exec tilon route -ne
exit
vi .ssh/authorized_keys 
exit
brctl show
tcpdump -i em2 -ne -l
