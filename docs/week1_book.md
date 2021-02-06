

## R1

**What is the difference between a host and an end system? List several different types of end systems. Is a Web server an end system?**

There is no difference. Throughout this text, the words "host" and "end system" are used interchangeably. End systems include PCs, workstations, Web servers, mail servers, PDAs, Internet-connnected game consoles, etc. 



## R16

**Consider sending a packet from a source host over a fixed route. List the delay components in the end-to-end delay. Which of these delays are constant and which are variable?**

The delay components are processing delays, transmission delays, propagation delays, and queuing delays. All of these delays are fixed, except for the queuing delays, which are variable.



## R19

**Suppose Host A wants to send a large file to host B. The path from Host A to Host B has three links, of rates R1=500kbs, R2=2Mbps, and R3=1Mbps**

### a)
**Assuming no ther traffic in the network, what is the throughput for the file transfer?** 

500kbs

###
**b) Suppose the file is 4 million bytes. Diving the file size by the throughout, roughly how long will it take to transfer the file to Host**

4.000.000/(500000/8) = 64sec

###c)
**Repeat a) and b), but now with R_2 reduced to 100kbps**

a) 100kbp, b) 4.000.000/(100000/8)= 320sec

## P1

**Design and describe an application-level protocol to be used between an automatic teller machine and a bank's centralized computer.**

```
Messages from ATM machine to Server
Msg name				purpose
--------				-------
HELO <userid>			Let server know that there is a card in the ATM machine
						ATM card transmits user ID to Server
PASSWD <passwd>			User enters PIN, which is sent to server
BALANCE					User requests balance
WITHDRAWL <amount>		User asks to withdraw money
BYE						user all done

Messages from Server to ATM machine (display)
Msg name				purpose
--------				-------
PASSWD					Ask user for PIN (password)
OK						last requested operation (PASSWD, WITHDRAWL) OK
ERR						last requested operation (PASSWD, WITHDRAWL) in ERROR
AMOUNT <amt>			sent in response to BALANCE request
BYE						user done, display welcome screen at ATM

Correct operation:

client                          server

HELO (userid)	-------------->	(check if valid userid)
				<-------------	PASSWD
PASSWD <passwd>	-------------->	(check password)
				<-------------	OK (password is OK)
BALANCE			-------------->
				<-------------	AMOUNT <amt>
WITHDRAWL <amt>	-------------->	check if enough $ to cover 				withdrawl
				<-------------	OK
ATM dispenses $
BYE				-------------->
				<-------------	BYE

```



## P5

**Review the car-caravn analogy in Section 1.4. Assume a propagtion speed of 100 km/hour.**

### a)
**Suppose the carancan travels 150km, beginning in front of one tollbooth, passing through a second tollbooth, and finishing just after a third tollbooth. What is the end to-end delays?**

Transmission delay for all three tollbooth: $12*10*3 = 360sec  = 6min$

Propagation delay: $150÷100*60 = 90min$

Total: $96min$

### b) 
**Repeat a), now assuming that there are eith cars in the caravan instead of ten.**

Transmission delay for all three tollbooth: $12*8*3 = 288sec  =  5min$

Propagation delay: $150÷100*60 = 90min$

Total: $95min$

## P6

**This elementary problem begins to explore propagation delay and transmission delay, two central concepts in data networking. Consider two hosts, A and B, connected by a single link of rate R bps. Suppose that the two hosts are separated by m meters and suppose the propagation speed along the link is s meters/sec. Host A is to send a packet of size L bits to Host B.**

### a)

**Express the propagation delay, $d_{prop}$**, **in terms of m and s**

$d_{prop}=m/s$

### b) 
**Determine the transmission time of the packet $d_{trans}$ in terms of L and R**

$d_{trans}=L/R$

### c) 
**Ignoring processing and queuing delays, obtain an expression for the end-to-end delay**

$d_{end-to-end}=(m/s+L/R)$

### d) 
**Suppose Host A begins to transmit the packet at time t=0. At time t=$d_{trans}$, where is the last bit of the packet?**

The bit is just leaving Host A

### e) 
**Suppose $d_{prop}$ is greater than $d_{trans}$. At time $t=d_{trans}$, where is the first bit of the packet?**

The first bit is in the link and has not reached Host B

### f) 
**Suppose $d_{prop}$ is less than $d_{trans}$ **. **At time $t=d_{trans}$ **,**where is the first bit of the packet?**

The first bit has reached Host B

**g) Suppose s=2.5x108, L=120bits, and R=56kbps. Find the ditance m so that $d_{prop}$ equals $d_{trans}$.**

$d_{prop}=d_{trans}$

$m=\frac{L}{R}s=536km$

 
