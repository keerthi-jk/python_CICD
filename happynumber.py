n = 2
sum  = 0 
result = False
length = len(str(n))       
if length < 2 :
    print("false")
else :
    n = str(n)
    while(result == False):
        for i in range(len(str(n))):
            sum = sum + int(n[i])**2
            
        if sum == 1:
            result = True
        else :
            n = str(sum)
            sum = 0
        
        
    print("sum is ", sum)
    print("result is ",result)