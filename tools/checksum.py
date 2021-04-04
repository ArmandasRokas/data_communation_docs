def BinToDec(value):
  try:
    return int(value, 2)
  except ValueError:
    return "Invalid binary Value"

# Main code
input1 = "0100000111000100"
input2 = "0010000000101011"

dec1 = BinToDec(input1)
dec2 = BinToDec(input2)

res_dec = dec1+dec2



if res_dec>65535:       # If 17th bit is 1
    res_dec -= 65536    # make it 0
    res_dec +=1         # add that bit to front


res_dec = ~res_dec # Bitwise NOT
res_dec = res_dec + 2**16 # Make it unsinged int
     
res_bin = bin(res_dec)[2:] 

if len(res_bin)==13:
    res_bin = "000" + res_bin

if len(res_bin)==14:
    res_bin = "00" + res_bin

if len(res_bin)==15:
    res_bin = "0" + res_bin

if len(res_bin)==16:
    res_bin = res_bin[:4] + " " +  res_bin[4:8]  + " " +  res_bin[8:12] + " " +  res_bin[12:16]
     
print("checksum: ", res_bin)
