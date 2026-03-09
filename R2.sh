R2#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R2(config)#
R2(config)#interface g1/0
R2(config-if)#ip address 10.0.0.2 255.255.255.0
R2(config-if)#no shutdown
R2(config-if)#
R2(config-if)#interface g2/0
R2(config-if)#ip address 20.0.0.2 255.255.255.0
R2(config-if)#no shutdown
R2(config-if)#interface f0/0
R2(config-if)#ip address 192.168.1.2 255.255.255.0
R2(config-if)#no shutdown
R2(config-if)#
R2(config-if)#router bgp 2
R2(config-router)#neighbor 10.0.0.1 remote-as 1
R2(config-router)#neighbor 20.0.0.1 remote-as 3
R2(config-router)#
R2(config-router)#network 10.0.0.0 mask 255.255.255.0
R2(config-router)#network 20.0.0.0 mask 255.255.255.0
R2(config-router)#network 192.168.1.0 mask 255.255.255.0
R2(config-router)#
R2(config-router)#end
*Mar  9 19:23:19.211: %LINK-3-UPDOWN: Interface GigabitEthernet1/0, changed state to up
*Mar  9 19:23:19.395: %LINK-3-UPDOWN: Interface GigabitEthernet2/0, changed state to up
*Mar  9 19:23:19.575: %LINK-3-UPDOWN: Interface FastEthernet0/0, changed state to up
*Mar  9 19:23:20.211: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet1/0, changed state to up
R2(config-router)#end
*Mar  9 19:23:20.395: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet2/0, changed state to up
*Mar  9 19:23:20.575: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/0, changed state to up
R2(config-router)#end^Z
R2#
R2#sh
*Mar  9 19:23:24.923: %SYS-5-CONFIG_I: Configured from console by console
R2#sh ip int br
*Mar  9 19:23:27.911: %BGP-5-ADJCHANGE: neighbor 10.0.0.1 Up
R2#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            192.168.1.2     YES manual up                    up
FastEthernet0/1            unassigned      YES unset  administratively down down
GigabitEthernet1/0         10.0.0.2        YES manual up                    up
GigabitEthernet2/0         20.0.0.2        YES manual up                    up
GigabitEthernet3/0         unassigned      YES unset  administratively down down
R2#sh ip bgp summ
BGP router identifier 192.168.1.2, local AS number 2
BGP table version is 1, main routing table version 1
4 network entries using 576 bytes of memory
5 path entries using 400 bytes of memory
2/0 BGP path/bestpath attribute entries using 288 bytes of memory
1 BGP AS-PATH entries using 24 bytes of memory
0 BGP route-map cache entries using 0 bytes of memory
0 BGP filter-list cache entries using 0 bytes of memory
BGP using 1288 total bytes of memory
BGP activity 4/0 prefixes, 5/0 paths, scan interval 60 secs

Neighbor        V           AS MsgRcvd MsgSent   TblVer  InQ OutQ Up/Down  State/PfxRcd
10.0.0.1        4            1       5       2        1    0    0 00:00:07        2
20.0.0.1        4            3       0       0        1    0    0 never    Idle
R2#
*Mar  9 19:24:43.551: %BGP-5-ADJCHANGE: neighbor 20.0.0.1 Up
R2#sh ip bgp summ
BGP router identifier 192.168.1.2, local AS number 2
BGP table version is 5, main routing table version 5
4 network entries using 576 bytes of memory
5 path entries using 400 bytes of memory
2/2 BGP path/bestpath attribute entries using 288 bytes of memory
1 BGP AS-PATH entries using 24 bytes of memory
0 BGP route-map cache entries using 0 bytes of memory
0 BGP filter-list cache entries using 0 bytes of memory
BGP using 1288 total bytes of memory
BGP activity 4/0 prefixes, 5/0 paths, scan interval 60 secs

Neighbor        V           AS MsgRcvd MsgSent   TblVer  InQ OutQ Up/Down  State/PfxRcd
10.0.0.1        4            1       6       5        5    0    0 00:01:31        2
20.0.0.1        4            3       2       7        5    0    0 00:00:16        0
R2#
