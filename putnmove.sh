SOURCE=$1
TARGET=$2
INTERIM=`basename $SOURCE`

for i in `cat cluster`; do
scp -i ./Adnan.pem $SOURCE centos@$i:~/
ssh -t -i ./Adnan.pem centos@$i "sudo cp $INTERIM $TARGET"
done

