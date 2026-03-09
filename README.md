<!DOCTYPE html>
<html>
<head>
    <title>BGP GNS3 Lab Project</title>
</head>
<body>

<h1>BGP Routing Lab using GNS3</h1>

<p>
This project demonstrates the implementation of <b>Border Gateway Protocol (BGP)</b> in a simulated
network environment using <b>GNS3</b>. The objective of the lab is to configure eBGP between
multiple routers and establish end-to-end connectivity between different network segments.
</p>

<h2>Project Overview</h2>
<p>
The lab consists of three routers (R1, R2, R3) and three PCs connected through different
subnets. BGP is configured between the routers to exchange routing information and enable
communication between remote networks.
</p>

<h2>Network Topology</h2>
<ul>
<li>Router 1 connected to PC1 (192.168.0.0/24)</li>
<li>Router 2 connected to PC2 (192.168.1.0/24)</li>
<li>Router 3 connected to PC3 (192.168.2.0/24)</li>
<li>R1 connected to R2 via network 10.0.0.0/24</li>
<li>R2 connected to R3 via network 20.0.0.0/24</li>
</ul>

<h2>Technologies Used</h2>
<ul>
<li>Cisco Routing and Switching</li>
<li>Border Gateway Protocol (BGP)</li>
<li>GNS3 Network Emulator</li>
<li>VPCS (Virtual PC Simulator)</li>
</ul>

<h2>BGP Configuration</h2>
<p>
External BGP (eBGP) is configured between the routers with the following autonomous systems:
</p>

<ul>
<li>R1 – AS 1</li>
<li>R2 – AS 2</li>
<li>R3 – AS 3</li>
</ul>

<p>
Each router advertises its local network using the BGP <b>network</b> command to allow route
propagation across the topology.
</p>

<h2>Verification</h2>
<p>
The following commands were used to verify successful BGP operation and connectivity:
</p>

<ul>
<li>show ip bgp summary</li>
<li>show ip route</li>
<li>ping</li>
<li>traceroute</li>
</ul>

<p>
Successful route propagation allowed communication between <b>PC1 and PC3</b>,
demonstrating proper BGP neighbor establishment and routing exchange.
</p>

<h2>Skills Demonstrated</h2>
<ul>
<li>BGP neighbor configuration</li>
<li>Route advertisement</li>
<li>Network troubleshooting</li>
<li>Routing table verification</li>
<li>End-to-end connectivity testing</li>
</ul>

<h2>Conclusion</h2>
<p>
This lab demonstrates practical understanding of BGP routing and how multiple routers
exchange routing information to achieve network connectivity across different
autonomous systems.
</p>

</body>
</html>
