####### INSERT #######

# Note, everything in Mbits

# Upload rate of the server access
us <- 72
# Upload rate of the peers access link
ui <- c(30,22,19,25,15)
# Download rate of the peers access link
di <-c(36,24,15,28,16)
# Size of file to be distributed
Fsize <- 10000
# Number of peers that want to obtain a copy of file
N <- 5

####### RESULTS #######

# Server-client
s_c_time <- max((N*Fsize)/us, Fsize/min(di))
s_c_time


# P2P 
p2p_time <-max(Fsize/72, Fsize/min(di), (N*Fsize)/(sum(ui)+us))
p2p_time
