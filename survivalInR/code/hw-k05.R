source('utils.R')

#=====> page 1 <=====#
temp <- as.matrix(read.delim('../data/hw-k05-000.txt', TRUE))
hold <- matrix(temp[,2], ncol=1)
row.names(hold) <- format(temp[,1])
holdCN          <- '0.00'

temp <- t(read.delim('../data/hw-k05-001.txt', FALSE, sep=' '))
hold <- Cbind(hold, temp[-1,])
holdCN <- c(holdCN, format(temp[1,]))


#=====> page 2 <=====#
temp <- as.matrix(read.delim('../data/hw-k05-010.txt', FALSE))
hold <- Cbind(hold, temp[-1,-1])
holdCN <- c(holdCN, format(c(0.01, temp[1,-1]))[-1])

temp <- t(read.delim('../data/hw-k05-011.txt', FALSE, sep=' '))
hold <- Cbind(hold, temp[-1,])
holdCN <- c(holdCN, format(temp[1,]))

#=====> page 3 <=====#
temp <- as.matrix(read.delim('../data/hw-k05-020.txt', FALSE))
hold <- Cbind(hold, temp[-1,-1])
holdCN <- c(holdCN, format(c(0.01, temp[1,-1]))[-1])

temp <- t(read.delim('../data/hw-k05-021.txt', FALSE, sep=' '))
hold <- Cbind(hold, temp[-1,])
holdCN <- c(holdCN, format(temp[1,]))

temp <- as.matrix(read.delim('../data/hw-k05-022.txt', FALSE))
hold <- Cbind(hold, temp[-1,])
holdCN <- c(holdCN, format(c(0.01, temp[1,]))[-1])

temp <- t(as.matrix(read.delim('../data/hw-k05-023.txt', sep=' ', FALSE)))
hold <- Cbind(hold, temp[-1,])
holdCN <- format(c(holdCN, format(c(0.01, temp[1,]))[-1]))





colnames(hold) <- holdCN

hold <- mendMatrix(hold)

save(hold, file='../data/hw-k05.rda')

