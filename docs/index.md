# About

Notes from 62577 Data Communication Spring 21 course at DTU.

## The overview of network layers


| **Layer** <br/> services | Data unit | Delivery | Identify by | Protocols                        | Diverse           |
| --------------- | --------- | -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| **Application** | Message   | -  | - | HTTP ; SMTP ; IMAP ; POP3 ;  BiTtorrent ; DNS ; DASH ; DHCP | TLD ; NS ; RR ; DORA ; CDN ; OTT |
| **Transport** <br> - Split a message to multiple packets <br> - Puts together again at receiver | Segment   | Process<br>to <br>Process | Port # | TCP ; UDP | RDP; RDT ;  RTT; GNB ; AIMD; MMS |
| **Internet** <br> - Packaging <br> - Addressing <br> - Routing the data | Datagram  | Host<br/>to<br/>Host | IP address <br> (Logical) | IPv4 ; IPv6 ;  Openflow ; RIP ; OSPF ; BGP ; iBGP ; eBGP ; ICMP; SNMP | CIDR; NAT; SDN ; LS ; DV ; AS; ISP; IXP; Subnet |
| **Link** <br/>- Farming <br/> - Link access <br/> - Reliable delivery<br/> - Error detection and correction | Frame     | Adjacent<br/> nodes | MAC address <br> (Physical) | ARP ; PPP ; Ethernet ; 802.11; CDMA | EDC;  CRC; NIC;  CSMA/CD; VLAN |



## Application

- **DASH** - Dynamic Adaptive Stream over HTTP
- **DHCP** - Dynamic Host Configuration Protocol 
- **DNS** - Domain Name system
- **HTTP** - Hypertext Transfer Protocol
- **IMAP** - Internet Message Access Protocol
- **POP3** - Post Office Protocol version 3
- **SMTP** -  Simple Mail Transfer Protocol

**Diverse**  

- **TLD DNS server** - Top-level domain DNS server
- **NS** - Name Server
- **RR** - resource record
- **DORA** - Discover, Offer, Request, Acknowledgment
- **CDN** - Content distribution networks
- **OTT** - Over the top



## Transport


- **TCP** - Transmission Control Protocol
- **UDP** - User Datagram Protocol



**Diverse** 

- **RDP** - Reliable Data Protocol
- **RDT** - Reliable Data Transfer Protocol
- **RTT** - Round trip time
- **GBN** - Go-Back-N
- **AIMD** - Additive-increase, multiplicative-decrease congestion control
- **MMS** - Maximum segment size





## Internet

- **ICMP** - The Internet Control Message Protocol 
- **IPv4** -  Internet Protocol version 4
- **RIP** - Routing Information Protocol
- **SNMP**  - The simple network management protocol 
- **OSPF** - Open shortest path first
- **BGP** - Border Gateway Protocol
- **iBGP** - Interior Border Gateway Protocol
- **eBGP** - Exterior Border Gateway Protocol
- **ECN** - Explicit Congestion Notification 
- **Openflow**

**Diverse** 

- **CIDR** - Classless InterDomain Routering
- **AS** - autonomous system 
- **NAT** - Networking address translation
- **SDN** - Software defined networking
- **LS** - Link state routing algorithm 
- **DV** - The distance-Vector routing algorithm
- **ISP** - Internet service provider
- **IXP** - Internet exchange point

## Link

- **ARP** - Address resolution protocol
- **PPP** - Point-to-point protocol
- **MAC** - Medium Access Control protocol
- **CDMA** - Code division multiple access

**Diverse** 

- **EDC** - Error detection and correction bits

- **CRC** - Cyclic Redundancy Check

- **NIC** - network interface card
- **CSMA/CD** - Carrier sense multiple access with collision detection



  