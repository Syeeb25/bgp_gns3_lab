R3#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R3(config)#
R3(config)#interface g1/0
R3(config-if)#ip address 20.0.0.1 255.255.255.0
R3(config-if)#no shutdown
R3(config-if)#
R3(config-if)#interface f0/0
R3(config-if)#ip address 192.168.2.2 255.255.255.0
R3(config-if)#no shutdown
R3(config-if)#
R3(config-if)#router bgp 3
R3(config-router)#neighbor 20.0.0.2 remote-as 2
R3(config-router)#
R3(config-router)#network 20.0.0.0 mask 255.255.255.0
R3(config-router)#network 192.168.2.0 mask 255.255.255.0
R3(config-router)#
*Mar  9 19:24:35.887: %LINK-3-UPDOWN: Interface GigabitEthernet1/0, changed state to up
*Mar  9 19:24:36.067: %LINK-3-UPDOWN: Interface FastEthernet0/0, changed state to up
*Mar  9 19:24:36.887: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet1/0, changed state to up
R3(config-router)#
R3(config-router)#
R3(config-router)#
*Mar  9 19:24:37.067: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/0, changed state to up
R3(config-router)#
R3(config-router)#^Z
R3#
R3#sh ip
*Mar  9 19:24:40.031: %SYS-5-CONFIG_I: Configured from console by console
R3#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            192.168.2.2     YES manual up                    up
FastEthernet0/1            unassigned      YES unset  administratively down down
GigabitEthernet1/0         20.0.0.1        YES manual up                    up
GigabitEthernet2/0         unassigned      YES unset  administratively down down
GigabitEthernet3/0         unassigned      YES unset  administratively down down
R3#sh i
*Mar  9 19:24:43.539: %BGP-5-ADJCHANGE: neighbor 20.0.0.2 Up
R3#sh ip bgp summ
BGP router identifier 192.168.2.2, local AS number 3
BGP table version is 1, main routing table version 1
5 network entries using 720 bytes of memory
6 path entries using 480 bytes of memory
3/0 BGP path/bestpath attribute entries using 432 bytes of memory
2 BGP AS-PATH entries using 48 bytes of memory
0 BGP route-map cache entries using 0 bytes of memory
0 BGP filter-list cache entries using 0 bytes of memory
BGP using 1680 total bytes of memory
BGP activity 5/0 prefixes, 6/0 paths, scan interval 60 secs

Neighbor        V           AS MsgRcvd MsgSent   TblVer  InQ OutQ Up/Down  State/PfxRcd
20.0.0.2        4            2       7       2        1    0    0 00:00:03        4
R3#
