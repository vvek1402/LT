
i = 0
ip = input("Enter expression : ")
a = len(ip)
l = list(ip)

print("Tokens are as below : ")

for b in l:
    if b == '(':
        print("Opening Brackets",b)
    elif b == ')':
        print("Closing brackets",b)
    elif b == 'U':
        print("Union",b)
    elif b == 'V':
        print("Intersection",b)
    elif b == ',':
        print("Comma", b)
    elif b == '0' or '1' or '2' or '3' or '4' or '5' or '6' or '7' or '8' or '9':
        print("Number", b)
    else:
        print("Invalid", b)

#In this program there is one bug that any invalid tokens are printed as number, soon will resolve