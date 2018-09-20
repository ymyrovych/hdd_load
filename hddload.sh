cd /opt
time sh -c 'dd if=/dev/zero iflag=count_bytes count=1G bs=1M of=large; sync'

for i in {1..50}
do
   echo "step $i "
   cp /opt/large /opt/large.$i
   ls -la /opt
   rm /opt/large.$i
   i=$((i+1))
done
