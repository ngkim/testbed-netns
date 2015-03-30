1960  ip netns exec TL-E1 ping 10.10.1.1.
 1961  ip netns exec TL-E1 ping 10.10.0.1
 1962  ip netns exec TL-E1 ping 211.193.42.90
 1963  ip netns exec TL-E1 ping 211.193.42.89
 1964  ip netns exec TL-E1 route -n
 1965  ip netns exec TL-E1 ping 211.193.42.89
 1966  exit
 1967  route -n
 1968  ifconfig
 1969  brctl show
 1970  tcpdump -i em2 -ne -l
 1971  exit
 1972  vi .ssh/authorized_keys 
 1973  exit
 1974  ifconfig | more
 1975  if netns;  ;
 1976  ip netns
 1977  ifconfig | more
 1978  tcpdump -i em2.121 
 1979  ps -ef | grep ping
 1980  ip netns
 1981  ps -ef | grep ping
 1982  ps -ef | grep iperf
 1983  ping 221.151.188.2
 1984  ip netns exec TL-E1 ping 221.151.188.2
 1985  ip netns
 1986  ip netns exec TL-E1 ifconfig
 1987  ip netns exec TL-E1 route -ne
 1988  ip netns exec TL-E1 ping 221.151.188.2
 1989  ip netns
 1990  ip netns exec TL-E1 ping 221.151.188.2
 1991  ip netns exec TL-E1 ping 211.193.42.89
 1992  ip netns exec TL-E1 ping 221.151.188.2
 1993  ip netns exec TL-E3 ping 221.151.188.2
 1994  ip netns exec TL-E4
 1995  ip netns exec TL-E4 route -n
 1996  ip netns exec TL-E4 ping 221.151.188.2
 1997  exit
 1998  tcpdump -i em2 -ne -l
 1999  exit
 2000  ls
 2001  ip netns
 2002  ip netns exec TL-E3 ifconfig
 2003  ip netns exec TL-E3 ifconfig TL-E3-int3 10.10.3.11/24 up
 2004  ip netns exec TL-E3 nc -l 43315
 2005  ip netns exec TL-E3 service nginx start
 2006  ip netns exec TL-E3 netstat -tlpn
 2007  ip netns exec TL-E3 vi /etc/nginx/nginx.conf
 2008  ls /etc/nginx/sites-enabled/default 
 2009  vi /etc/nginx/sites-enabled/default 
 2010  ip netns exec TL-E3 service nginx start
 2011  ip netns exec TL-E3 service nginx stop
 2012  ip netns exec TL-E3 service nginx start
 2013  ip netns exec TL-E3 netstat -tlpn
 2014  ip netns exec TL-E3 route -n
 2015  ip netns exec TL-E3 ip route add 221.151.188.0/24 via 10.10.3.1
 2016  ip netns exec TL-E3 service nginx stop
 2017  ip netns exec TL-E3 nc -l 43315

