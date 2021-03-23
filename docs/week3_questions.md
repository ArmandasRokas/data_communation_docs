

## DNS 
The Domain Name System (DNS) is the phonebook of the Internet. Humans access information online through domain names, like nytimes.com or espn.com. Web browsers interact through Internet Protocol (IP) addresses. DNS translates domain names to IP addresses so browsers can load Internet resources.

[DNS](https://www.cloudflare.com/learning/dns/what-is-dns/)


### Difference between iterative and recursive calling

**Iterative**

Iterative DNS queries are ones in which a DNS server is queried and returns an answer without querying other DNS servers, even if it cannot provide a definitive answer. Iterative queries are also called non-recursive queries.

**Recursive**

Recursive DNS queries occur when a DNS client requests information from a DNS server that is set to query subsequent DNS servers until a definitive answer is returned to the client. The queries made to subsequent DNS servers from the first DNS server are iterative queries.


### Scenarios where recursive calling is  relevant

Recursive DNS queries generally tend to resolve faster than iterative queries. This is due to caching. A recursive DNS server caches the final answer to every query it performs and saves that final answer for a certain amount of time (known as the Time-To-Live).

###  Why hierarchical database?

In order to deal with the issue of scale. Page 164

## What is a DNS caching?

DNS cache refers to the temporary storage of information about previous DNS lookups

## Compare P2P with server Client architecture

Peer-to-peer networks connect computers so that each computer shares all or part of its resources. Client-server networks have one or more central computers, or servers, that hold the data and manage resources.



## How does DASH work?


HTTP-based streaming, often referred to as Dynamic Adaptive Streaming over HTTP (DASH). In DASH, the video is encoded into several different versions, with each version having a different bit rate and, correspondingly, a different quality level. The client dynamically requests chunks of video segments of a few seconds in length. When the amount of available bandwidth is high, the client naturally selects chunks from a high-rate version; and when the available bandwidth is low, it naturally selects from a low-rate version. The client selects different chunks one at a time with HTTP GET request messages.

With DASH, each video version is stored in the HTTP server, each with a different URL. The HTTP server also has a manifest file, which provides a URL for each version along with its bit rate. The client first requests the manifest file and learns about the various versions. The client then selects one chunk at a time by specifying a URL and a byte range in an HTTP GET request message for each chunk. While downloading chunks, the client also measures the received bandwidth and runs a rate determination algorithm to select the chunk to request next. Naturally, if the client has a lot of video buffered and if the measured receive bandwidth is high, it will choose a chunk from a high-bitrate version. And naturally if the client has little video buffered and the measured received bandwidth is low, it will choose a chunk from a low-bitrate version. DASH therefore allows the client to freely switch among different quality levels.
