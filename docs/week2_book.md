# Chapter 2 Review Questions

## R2

**What is the difference between network architecture and application architecture?** 

Network architecture refers to the organization of the communication process into layers (e.g., the five-layer Internet architecture). Application architecture, on the other hand, is designed by an application developer and dictates the broad structure of the application (e.g., client-server or P2P).

## R4

**For a P2P file-sharing application, do you agree with the statement, “There is no notion of
client and server sides of a communication session”? Why or why not?**

No. In a P2P file-sharing application, the peer that is receiving a file is typically the client and the peer that is sending the file is typically the server. 



## R7

**Referring to Figure 2.4 , we see that none of the applications listed in Figure 2.4 requires both no data loss and timing. Can you conceive of an application that requires no data loss and that is also highly time-sensitive?**

One such example is remote word processing, for example, with Google docs. However, because Google docs runs over the Internet (using TCP), timing guarantees are not provided.



## R9

**Recall that TCP can be enhanced with SSL to provide process-to-process security services,
including encryption. Does SSL operate at the transport layer or the application layer? If the
application developer wants TCP to be enhanced with SSL, what does the developer have to
do?**

SSL operates at the application layer. The SSL socket takes unencrypted data from the application layer, encrypts it and then passes it to the TCP socket. If the application developer wants TCP to be enhanced with SSL, she has to include the SSL code in the application.



## R10

**What is meant by a handshaking protocol?**

A protocol uses handshaking if the two communicating entities first exchange control packets before sending data to each other. SMTP uses handshaking at the application layer whereas HTTP does not.



## R11

**Why do HTTP, SMTP, and POP3 run on top of TCP rather than on UDP?**

The applications associated with those protocols require that all application data be received in the correct order and without gaps. TCP provides this service whereas UDP does not.



## R12

**Consider an e-commerce site that wants to keep a purchase record for each of its
customers. Describe how this can be done with cookies.**

When the user first visits the site, the server creates a unique identification number, creates an entry in its back-end database, and returns this identification number as a cookie number. This cookie number is stored on the user’s host and is managed by the browser. During each subsequent visit (and purchase), the browser sends the cookie number back to the site. Thus the site knows when this user (more precisely, this browser) is visiting the site.



## R15

**List several popular messaging apps. Do they use the same protocols as SMS?**

A list of several popular messaging apps: WhatsApp, Facebook Messenger, WeChat, and Snapchat. These apps use the different protocols than SMS.



## P1

**True or false?**

- a. FALSE: A user requests a Web page that consists of some text and three images. For this page,
  the client will send one request message and receive four response messages.

- b. TRUE: Two distinct Web pages (for example, www.mit.edu/research.html and
  www.mit.edu/students.html ) can be sent over the same persistent connection.
- c. FALSE:With nonpersistent connections between browser and origin server, it is possible for a
  single TCP segment to carry two distinct HTTP request messages.
- d.  FALSE: The Date: header in the HTTP response message indicates when the object in the
  response was last modified.
- e. FALSE: HTTP response messages never have an empty message body.

## P3

**Consider an HTTP client that wants to retrieve a Web document at a given URL. The IP
address of the HTTP server is initially unknown. What transport and application-layer protocols
besides HTTP are needed in this scenario?**

- Application layer protocols: DNS and HTTP
- Transport layer protocols: UDP for DNS; TCP for HTTP


## P6

**Obtain the HTTP/1.1 specification (RFC 2616). Answer the following questions:**

### a

**Explain the mechanism used for signaling between the client and server to indicate that a
persistent connection is being closed. Can the client, the server, or both signal the close
of a connection?**

Persistent connections are discussed in section 8 of RFC 2616 (the real goal of this question was to get you to retrieve and read an RFC).  Sections 8.1.2 and 8.1.2.1 of the RFC indicate that either the client or the server can indicate to the other that it is going to close the persistent connection. It does so by including the connection-token "close" in the Connection-header field of the http request/reply.

### b

**What encryption services are provided by HTTP?**

HTTP does not provide any encryption services. 

### c
**Can a client open three or more simultaneous connections with a given server?**
(From RFC 2616) “Clients that use persistent connections should limit the number of simultaneous connections that they maintain to a given server. A single-user client SHOULD NOT maintain more than 2 connections with any server or proxy.”

### d
**Either a server or a client may close a transport connection between them if either one detects the connection has been idle for some time. Is it possible that one side starts closing a connection while the other side is transmitting data via this connection? Explain.**

Yes. (From RFC 2616) “A client might have started to send a new request at the same time that the server has decided to close the "idle" connection. From the server's point of view, the connection is being closed while it was idle, but from the client's point of view, a request is in progress.”