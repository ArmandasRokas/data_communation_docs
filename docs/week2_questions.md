

## What are the 4 aspects of data reliability?
- A reliable service is one that notifies the user if delivery fails, while an unreliable one does not notify the user if delivery fails
- All data is sent (no missing or duplicates bytes)
- The proper order
Page 123
## What is a server?
A host, which services requests from many other hosts, called clients. Page 115
## What are the 2 different types of Transport layer protocol? Compare them

| Transmission control protocol (TCP)                          | User datagram protocol (UDP)                                 |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| TCP is a connection-oriented protocol. Connection-orientation means that the communicating devices should establish a connection before transmitting data and should close the connection after transmitting the data. | UDP is the Datagram oriented protocol. This is because there is no overhead for opening a connection, maintaining a connection, and terminating a connection. UDP is efficient for broadcast and multicast type of network transmission. |
| TCP is reliable as it guarantees delivery of data to the destination router. | The delivery of data to the destination cannot be guaranteed in UDP. |
| TCP provides extensive error checking mechanisms. It is because it provides flow control and acknowledgment of data. | UDP has only the basic error checking mechanism using checksums. |
| Sequencing of data is a feature of Transmission Control Protocol (TCP). this means that packets arrive in-order at the receiver. | There is no sequencing of data in UDP. If ordering is required, it has to be managed by the application layer. |
| TCP is comparatively slower than UDP.                        | TCP is comparatively slower than UDP.                        |
| Retransmission of lost packets is possible in TCP, but not in UDP. | There is no retransmission of lost packets in User Datagram Protocol (UDP). |
| TCP has a (20-80) bytes variable length header.              | UDP has a 8 bytes fixed length header.                       |
| TCP is heavy-weight.                                         | UDP is lightweight.                                          |
| TCP doesn’t supports Broadcasting.                           | UDP supports Broadcasting.                                   |
| TCP is used by HTTP, HTTPs, FTP, SMTP and Telnet.            | UDP is used by DNS, DHCP, TFTP, SNMP, RIP, and VoIP.         |



[TCP vs UDP](https://www.geeksforgeeks.org/differences-between-tcp-and-udp/)



## How does caching work?

1. The browser establishes a TCP connection to the Web cache and sends an HTTP request for the object to the Web cache.
2. The web cache checks to see if it has a copy o the object stored locally. If it does, the Web cache returns the object within an HTTP reposnse message to the client browser
3. If the cache does not have the object, the Web cache opens TCP connection to the origin server. The Web cache then sends an HTTP request for the object into the cache-to-server TCP connection. After receiving this request, the origin server sends the object within an HTTP response to the Web cache. 
4. When the Web cache receives the object, it stores a copy in its local storage and sends a copy, within an HTTP response message, to the client browser(over the existing TCP connection between the client browser and the Web cache). 

## What are cookies?

See [Cookies](week2_concepts.md)



## How does SMTP work, try the live on thinlinc!!

