## Centralized architecture vs distributed architecture

- **Security**:
  - CENTRALIZED: If someone has access to the server with the information, any data can be added, modified and deleted.
  - DISTRIBUTED: All data is distributed between the nodes of the network. If something is added, edited or deleted in any computer, it will be reflected in all the computers in the network. If some legal amendments are accepted, new information will be disseminated among other users throughout the network. Otherwise, the data will be copied to match the other nodes. Therefore, the system is self-sufficient and self-regulating. The databases are protected against deliberate attacks or accidental changes of information.
- **Availability**:
  - CENTRALIZED: If there are several requests, the server can break down and no longer respond.
  - DISTRIBUTED: Can withstand significant pressure on the network. All the nodes in the network have the data. Then, the requests are distributed among the nodes. Therefore, the pressure does not fall on a computer, but on the entire network. In this case, the total availability of the network is much greater than in the centralized one.
- **Accessibility**:
  - CENTRALIZED: If the central storage has problems, you will not be able to obtain your information unless the problems are solved. In addition, different users have different needs, but the processes are standardized and can be inconvenient for customers.
  - DISTRIBUTED: Given that the number of computers in the distributed network is large, DDoS attacks are possible only in case their capacity is much greater than that of the network. But that would be a very expensive attack. In a centralized model, the response time is very similar in this case. Therefore, it can be considered that distributed networks are secure.
- **Data transfer rates:**
  - CENTRALIZED: If the nodes are located in different countries or continents, the connection with the server can become a problem.
  - DISTRIBUTED: In distributed networks, the client can choose the node and work with all the required information.
- **Scalability:**
  - CENTRALIZED: Centralized networks are difficult to scale because the capacity of the server is limited and the traffic can not be infinite. In a centralized model, all clients are connected to the server. Only the server stores all the data. Therefore, all requests to receive, change, add or delete data go through the main computer. But server resources are finite. As a result, he is able to carry out his work effectively only for the specific number of participants. If the number of clients is greater, the server load may exceed the limit during the peak time.
  - DISTRIBUTED: Distributed models do not have this problem since the load is shared among several computers.

[Centralized vs distributed](https://icommunity.io/en/redes-centralizadas-vs-distribuidas/#:~:text=CENTRALIZED%3A%20If%20someone%20has%20access,the%20computers%20in%20the%20network.)



## Bit torrent

**BitTorrent** (abbreviated to **BT**) is a communication [protocol](https://en.wikipedia.org/wiki/Protocol_(computing)) for [peer-to-peer file sharing](https://en.wikipedia.org/wiki/Peer-to-peer_file_sharing) (P2P), which enables users to distribute [data](https://en.wikipedia.org/wiki/Data_(computing)) and [electronic files](https://en.wikipedia.org/wiki/Electronic_file) over the [Internet](https://en.wikipedia.org/wiki/Internet) in a [decentralized](https://en.wikipedia.org/wiki/Decentralised_system) manner.

BitTorrent is a **tit-for-tat protocol,** meaning that you have to give in order to receive. 

[Bit torrent](https://users-cs.au.dk/bouvin/dBIoTP2PC/2017/slides/BitTorrent.pdf)

 Typically, BitTorrent uses [TCP](https://wiki.wireshark.org/TCP) as its transport protocol. The well known TCP port for BitTorrent traffic is 6881-6889 (and 6969 for the tracker port). The DHT extension (peer2peer tracker) uses various UDP ports negotiated by the peers.

[TCP Bittorrent](https://wiki.wireshark.org/BitTorrent)

### Churn

Churn refers to a large number of arriving and departing participants within a short time in peer-to-peer (P2P) networks.

[Churn](https://ieeexplore.ieee.org/document/6687347)

### Rarest first

The rarest first algorithm refers to the normal operation of the piece selection policy used in BitTorrent. It is also called the local rarest first algorithm. Each peer has a rarest pieces set. The rarest pieces are the pieces that have the least number of copies in the peer set. In general, right after being unchoked, the local peer randomly requests the next piece to download in its rarest pieces set. [Rarest first](https://arxiv.org/pdf/1402.2187.pdf#:~:text=The%20rarest%20first%20algorithm%20refers,copies%20in%20the%20peer%20set.)

### Optimistically unchoked

- Each peer in a peer’s neighbour list has two state bits: 
  - interested/uninterested: this bit tells us whether the neighbour is interested in the pieces we have got. 
  - choked/unchoked: this bit states whether we are currently choking the neighbour. 
- Choking a peer means disallowing it to download pieces at this point in time.
- Peers send choke, unchoke, interested, and not interested messages to each other in the peer protocol.

- Choking works on a tit-for-tat basis: 

  - If we are currently downloading from a peer, we will unchoke that peer so that it may also download from us. 
    - This means, that when selecting a peer to download from, we should prefer peers that are interested in us. 
  - If a peer does not contribute (i.e., we are not able to download from it) we can choke it again. 

- **Optimistic unchoke**: 

  - It is a strategy to choose peers to cooperate with.  
  - One or more peers will be optimistically unchoked at all time. This role rotates every 30 seconds. If an optimistically unchoked peer start contributing, it may stay unchoked.

  - Replacing contributing peers, if an optimistic unchoke results in a peer that is performing better (yielding faster download rates), one of the currently unchoked peers will be replaced.

- Choked/unchoked state of neighbours is reconsidered every 10 seconds.

-  At any point in time a peer should have a number of unchoked neighbours.

  - Some implementations have a static value of 4, whereas others use the square root of the upload capacity in KB/s 

[Optimistically unchoked](https://users-cs.au.dk/bouvin/dBIoTP2PC/2017/slides/BitTorrent.pdf)



### Leech
Leech has two meanings. Often, leecher is synonymous with downloader (see above): simply describing a peer or any client that does not have 100% of the data.
The term leech also refers to a peer (or peers) that has a negative effect on the swarm by having a very poor share ratio, downloading much more than they upload. Leeches may be on asymmetric Internet connections or do not leave their BitTorrent client open to seed the file after their download has completed. However, some leeches intentionally avoid uploading by using modified clients or excessively limiting their upload speed.  [Leech Bittorrent glossary](https://en.wikipedia.org/wiki/Glossary_of_BitTorrent_terms)

### Seed / Seeding

A seed refers to a machine possessing all of the data (100 % completion). A peer or downloader becomes a seed when it completely downloads all the data and continues/starts uploading data for other peers to download from. This includes any peer possessing 100% of the data or a web seed. When a downloader starts uploading content, the peer becomes a seed






