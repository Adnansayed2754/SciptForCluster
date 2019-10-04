scp -i ./security.pem ./security.pem ec2-user@`cat launcher`:~/
ssh -i ./security.pem ec2-user@`cat launcher` 'chmod 400 ./security.pem'
scp -i ./security.pem ./launch-cluster.sh ec2-user@`cat launcher`:~/
scp -i ./security.pem ./aws.simple.conf ec2-user@`cat launcher`:~/
ssh -i ./security.pem ec2-user@`cat launcher` 'sh launch-cluster.sh'
