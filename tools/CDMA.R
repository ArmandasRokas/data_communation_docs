#### Sender ####

d <- c(-1,1)
M <- c(1,1,1,-1,1,-1,-1,-1)
M_size <- length(M)

Z <- tcrossprod(d,M)

encoded_output <- Z
encoded_output

#### Receiver ####

sweeped <- sweep(Z, 
                 FUN='*',
                 M, 
                 MARGIN=2)

summed <- rowSums(sweeped)
d_receiver <- summed/M_size
d_receiver




#### CDMA two senders

#### Sender 1 ####
d1 <- c(-1,1)
M1 <- c(1,1,1,-1,1,-1,-1,-1)
M1_size <- length(M1)
Z1 <- tcrossprod(d1,M1)

#### Sender 2 ####
d2 <- c(1,1)
M2 <- c(1,-1,1,1,1,-1,1,1)
M2_size <- length(M2)
Z2 <- tcrossprod(d2,M2)

addition_Z <- Z1+Z2


#### Receiver 1 ####
sweeped_1 <- sweep(addition_Z, 
                 FUN='*',
                 M1, 
                 MARGIN=2)

summed_1 <- rowSums(sweeped_1)
d1_receiver <- summed_1/M1_size
d1_receiver


#### Receiver 2 ####
sweeped_2 <- sweep(addition_Z, 
                   FUN='*',
                   M2, 
                   MARGIN=2)

summed_2 <- rowSums(sweeped_2)
d2_receiver <- summed_2/M2_size
d2_receiver



#### CDMA two senders. Unknown sending bit

#### Sender 1 ####

M1 <- c(1, 1, 1, -1, 1, -1, -1, -1) 
M1_size <- length(M1)

#### Sender 2 ####

M2 <- c(-1, 1, 1, 1, 1, -1, -1, -1)
M2_size <- length(M2)

addition_Z <- matrix(c(-2, 0, 0, 2, 0, 0, 0, 0), 
                     nrow=1, byrow=TRUE)


#### Receiver 1 ####
sweeped_1 <- sweep(addition_Z, 
                   FUN='*',
                   M1, 
                   MARGIN=2)

summed_1 <- rowSums(sweeped_1)
d1_receiver <- summed_1/M1_size
d1_receiver


#### Receiver 2 ####
sweeped_2 <- sweep(addition_Z, 
                   FUN='*',
                   M2, 
                   MARGIN=2)

summed_2 <- rowSums(sweeped_2)
d2_receiver <- summed_2/M2_size
d2_receiver












