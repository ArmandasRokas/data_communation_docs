## Traceroute
- Each hop represented  by a different line
- TTL how long a packet can live before it discarded. 
- `* * *` means that the router at that hop doesn't respond to the packet. 
- First column the number of hop.
- Second column destination address.   
- Traceroute will actually send three packets of data, and measure the time taken for each - this is shown in the 3 columns after the destination

### eb.dk
```
(base) arm@arm-DELL:~$ traceroute www.eb.dk
traceroute to www.eb.dk (91.214.22.65), 30 hops max, 60 byte packets
 1  _gateway (192.168.43.30)  156.456 ms  156.360 ms  156.414 ms
 2  * * *
 3  10.117.2.172 (10.117.2.172)  158.470 ms  158.430 ms  158.389 ms
 4  10.219.160.20 (10.219.160.20)  158.348 ms * *
 5  195-215-224-90-static.dk.customer.tdc.net (195.215.224.90)  301.828 ms  301.788 ms  301.747 ms
 6  ae1-0.alb2nqp8.dk.ip.tdc.net (83.88.19.119)  301.709 ms  655.345 ms  655.230 ms
 7  ae-6.edge2.Copenhagen2.Level3.net (4.68.72.193)  655.235 ms  654.950 ms  654.968 ms
 8  213.242.108.194 (213.242.108.194)  654.853 ms  654.814 ms  654.772 ms
 9  et-3-3-0-0.taas11cr1dk.gc-net.eu (77.243.32.202)  654.732 ms  654.691 ms  654.724 ms
10  212-98-126-214.hoer1cr1dk.gc-net.eu (212.98.126.214)  129.530 ms  129.451 ms  129.414 ms
11  * * *
12  * * *
13  * * *
...
```

### princeton.edu
```
(base) arm@arm-DELL:~$ traceroute www.princeton.edu
traceroute to www.princeton.edu (104.18.5.101), 30 hops max, 60 byte packets
 1  _gateway (192.168.43.206)  7.518 ms  7.757 ms  7.844 ms
 2  * * *
 3  10.117.2.172 (10.117.2.172)  155.456 ms  155.414 ms  155.363 ms
 4  10.219.160.20 (10.219.160.20)  155.313 ms  155.263 ms  155.213 ms
 5  irb-610.alb2tdm13nqe2.dk.ip.tdc.net (195.215.224.90)  155.173 ms  155.150 ms  155.091 ms
 6  ae0-0.alb2nqp8.dk.ip.tdc.net (83.88.19.117)  155.069 ms  18.168 ms  22.646 ms
 7  peer-as13335.alb2nqp8.dk.ip.tdc.net (128.76.59.91)  942.923 ms  943.039 ms  943.030 ms
 8  104.18.5.101 (104.18.5.101)  942.894 ms  942.884 ms  942.875 ms
(base) arm@arm-DELL:~$ 

```

