R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#
R1(config)#int f0/0
R1(config-if)#ip add 192.168.0.2 255.255.255.0
R1(config-if)#no sh
R1(config-if)#i
*Mar  9 19:18:29.407: %LINK-3-UPDOWN: Interface FastEthernet0/0, changed state to up
*Mar  9 19:18:30.407: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/0, changed state to up
R1(config-if)#int g1/0
R1(config-if)#ip add 10.0.0.1 255.255.255.0
R1(config-if)#
R1(config-if)#no sh
R1(config-if)#
R1(config-if)#router bgp 1
*Mar  9 19:19:04.591: %LINK-3-UPDOWN: Interface GigabitEthernet1/0, changed state to up
*Mar  9 19:19:05.591: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet1/0, changed state to up
R1(config-if)#router bgp 1
R1(config-router)#neigh
R1(config-router)#^Z
R1#
R1#
R1#
*Mar  9 19:20:45.091: %SYS-5-CONFIG_I: Configured from console by console
R1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
R1(config)#router bgp 100
BGP is already running; AS is 1
R1(config)#router bgp 1
R1(config-router)#
R1(config-router)#neigh
R1(config-router)#neighbor 10.0.0.2 remote-as 2
R1(config-router)#network 192.168.0.0 mask 255.255.255.0
R1(config-router)#network 10.0.0.0 mask 255.255.255.0
R1(config-router)#
*Mar  9 19:23:27.963: %BGP-5-ADJCHANGE: neighbor 10.0.0.2 Up
R1(config-router)#^Z
R1#
R1#
R1#sh ip i
*Mar  9 19:23:44.387: %SYS-5-CONFIG_I: Configured from console by console
R1#sh ip int br
Interface                  IP-Address      OK? Method Status                Protocol
FastEthernet0/0            192.168.0.2     YES manual up                    up
FastEthernet0/1            unassigned      YES unset  administratively down down
GigabitEthernet1/0         10.0.0.1        YES manual up                    up
GigabitEthernet2/0         unassigned      YES unset  administratively down down
GigabitEthernet3/0         unassigned      YES unset  administratively down down
R1#
R1#sh ip bgp summ
BGP router identifier 192.168.0.2, local AS number 1
BGP table version is 3, main routing table version 3
2 network entries using 288 bytes of memory
2 path entries using 160 bytes of memory
1/1 BGP path/bestpath attribute entries using 144 bytes of memory
0 BGP route-map cache entries using 0 bytes of memory
0 BGP filter-list cache entries using 0 bytes of memory
BGP using 592 total bytes of memory
BGP activity 2/0 prefixes, 2/0 paths, scan interval 60 secs

Neighbor        V           AS MsgRcvd MsgSent   TblVer  InQ OutQ Up/Down  State/PfxRcd
10.0.0.2        4            2       2       5        3    0    0 00:00:22        0
R1#
