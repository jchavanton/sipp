#!/usr/bin/python

print ("generate\n")
start = 10000
counter = start
end   = 50000
ip_A = 1;
ip_B = 1;
ip_C = 1;
ip_D = 1;

def increment():
   global counter
   global ip_A, ip_B, ip_C, ip_D
   counter += 1
   if ip_D < 254:
      ip_D += 1;
   elif ip_C < 254:
      ip_D = 1
      ip_C += 1

f = open('input.csv', 'w')
f.write("SEQUENTIAL\n")

while counter < end:
    f.write("%d;%d;flowroute.com;mok-carrier;client.domain.com;%d.%d.%d.%d\n" % (counter, counter, ip_A, ip_B, ip_C, ip_D))
    increment()

f.close()
