# Calculations 

## Transmission delay
- Time to transmit packet into channel

$$
D_{trans} = \frac{L}{R}
$$

- $L$ is length of the packet in bits
- $R$ is transmission rate of the link in bits/sec

- Example: 1 Gbps link, 8000 bit packet

$$
D_{trans} = \frac{8000bit}{10^9bit/sec}= 8microsecs
$$

## RTT


$$
RTT = 2*D_{prop}
$$

![](pics/rtt.png)

## Utilization - fraction of time sender busy sending

- In relation to the performance of RTT

$$
U_{sender}=\frac{D_{trans}}{RTT+D_{Trans}}
$$

- Example: 

$$
D_{trans}=8mircosecs \\
RTT = 30 ms \\
U_{sender} = \frac{8}{30+0.008} = 0.00027
$$



