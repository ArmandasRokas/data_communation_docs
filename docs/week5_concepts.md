## 2 main functions of network layer



|                | Forwarding                                                   | Routing                                                      |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Range          | Local. Moving packet from input to an appropriate output port | Global. Moving a packet over multiple different routers and hubs |
| Analogy        | Getting trough the single interchange                        | Planning a trip from CPH to Paris                            |
| Implementation | Hardware                                                     | Software                                                     |
| Duration       | Nanoseconds                                                  | Seconds                                                      |



### Router Forwarding table
- To identify the outgoing link interface for a arrived packet. 
- Examine packet header and send to appropriate outgoing link
- Created be routing algorithm. Local decision to support global goals

## DHCP

- How does a host get an IP address?
  - Manually - hard coded
  - Automagically-  DHCP
- Dynamic Host Configuration Protocol
- Goal
  -  Dynamically Obtain IP Address
  - Default Gateway
  - DNS Server 
  - Subnet Mask
- Could be possible multiple DHCP servers, so all four steps are needed to confirm DHCP server that the client will use that ip. 

![](pics/DHCP.png)*

## What does router consist of ?
- **Input ports**
	- "ports" refering to the physical input and output router interface.
	- Here the forwarding table is consulted to determine the router output port to which an arriving packet will be forwarded via the switching fabric
- **Switching fabric**
	- connects the router's input ports to its output ports
	- Where forwarding happens
- **Outout ports**
	- stores packets received from the swirching fabric and transmits these packets on the outgoing link
	- Buffering. scheduling
- **Router processing**
	- Brains, operations 
	- Perform control plane functions
	- In SDN routers, the routing processor is responsible for communicating with the remote controller in order to receive forwarding table entries computed by the remote controller

## Memory based switching fabric vs Shared bus vs crossbar 

- The main function of a switch fabric is to relay data efficiently and rapidly from its inputs to its outputs

| Memory based                     | Shared bus               | Crossbar                                                     |
| -------------------------------- | ------------------------ | ------------------------------------------------------------ |
| Copy in memory and out of memory | Directly over a bus,     | Consist of 2N buses, capable of forwarding multiple packets in parallel |
| Old-school, slow                 | limited by bus bandwidth | Complicated, Costly, Fast                                    |







## Explain DORA process.



## IP
- Ip address one for interface, that's 32-bit identifier for interface . So IP isn't numbering computers/hosts, but network interfaces. Or more specific the ip address is divided between the network address and a interface address



## What is CIDR? What does x mean in the ip address  a.b.c.d/x 

- Classless InterDomain Routering
  - *CIDR* notation is a compact representation of an IP address and its associated *network mask*.
  - subnet (logical subdivision of an IP network) portion of address of arbitrary length. Not only limited by 8bit boundaries
- network park of address is defined in x-bits. That's **x** = # bits in subnet portion
- solves a problem if you have more than 255 computers in a network by adding `/23

### Subnet mask

- Subnet mask is another way defining `/24`
-  the subnet mask separates the IP address into the network and host addresses
- All 1's defines the network part



|   Binary form   |         Dot-decimal notation          |               |
| :-------------: | :-----------------------------------: | ------------- |
|   IP address    | `11000000.00000000.00000010.10000010` | 192.0.2.130   |
|   Subnet mask   | `11111111.11111111.11111111.00000000` | 255.255.255.0 |
| Network prefix  | `11000000.00000000.00000010.00000000` | 192.0.2.0     |
| Host identifier | `00000000.00000000.00000000.10000010` | 0.0.0.130     |





##  List 2 ways used to extend the usage of IPv4 


### NAT 

- Network Address Translation
- **Use 1 global IP per LAN** instead of having every public IP address for every computer
- Port identifies from which host is coming.

![](/home/arm/Projects/datacom_docs/docs/pics/NAT.png)

### IPv6

- Initial Motivation
  - Address Space
  - 


| IPv4 | IPv6 |
| ---- | ---- |
|   32-bit   | 128-bit |
| Optional section in a header | Fixed header. Option could be added in payload |
| Fragmentation is allowed | No Fragmentation |
| Checksum | No checksum |
|  | Flows and Priority for better service |





## What is fragmentation?

- Take one big dataframe and make it to a number of smaller datagrams

- Flag an fragment offset in iP header are used to identify fragment and reassemble them

- $$
  \text{Offset}=\frac{\text{Number of bytes}}{8}
  $$

![https://en.wikipedia.org/wiki/IP_fragmentation#/media/File:IPv4_Fragmentation_example_-en.svg](pics/ip_fragmantation.png)

