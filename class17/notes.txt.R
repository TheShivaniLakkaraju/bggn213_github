#Instance ID
#i-06a8ecb8e4c579708 (bggn213_slakkara)
#Open an SSH client.
#Locate your private key file. The key used to launch this instance is bggn213_sl.pem
#Run this command, if necessary, to ensure your key is not publicly viewable.
#chmod 400 "bggn213_sl.pem"
#Connect to your instance using its Public DNS:
#ec2-44-246-29-166.us-west-2.compute.amazonaws.com
#Example:
#ssh -i "bggn213_sl.pem" ubuntu@ec2-44-246-29-166.us-west-2.compute.amazonaws.com

# Make sure you are accessing your keyfile and instance
Ssh -i $KEY $SERVER
scp -r -i $KEY $SERVER:/*_quant .

export KEY="~/Desktop/bggn213/class16/bggn213_sl.pem"
export SERVER="ubuntu@ec2-44-246-29-166.us-west-2.compute.amazonaws.com"