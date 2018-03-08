#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating  gamut_con$i container.."
    sleep 1
    docker run --name jenkins$i -d -it  gamut_img /bin/bash
    echo " gamut_con$i container has been created!"
	echo "=============================="
done
