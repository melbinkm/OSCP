!/bin/bash

echo "Starting ping sweep on 10.11.1.0/24"
echo "These IPs are up"
for i in $(seq 1 255); 
do
{
    ping -c 1 "10.11.1.$i" | grep "from" | cut -d " " -f 4 | cut -d ":" -f 1 & 
}
done;
sleep .5
echo "Ping sweep completed"
exit 0
