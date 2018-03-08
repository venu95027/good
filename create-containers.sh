#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating newimage$i container.."
    sleep 1
    docker run --name jenkins$i -d -it   newimage /bin/bash
    echo "tom$i container has been created!"
	echo "=============================="
done
