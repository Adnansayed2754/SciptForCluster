for i in `cat cluster`; do
ssh -t -i ./Adnan.pem centos@$i $* 
done

