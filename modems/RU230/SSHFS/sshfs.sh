if [ -z $1 ]; 
then
	sshfs -o debug,sshfs_debug,loglevel=debug,nonempty root@10.10.0.50:/ ~/work/EngelSolar/modems/RU230/SSHFS
else
	sshfs root@$1:/ ~/work/EngelSolar/modems/RU230/SSHFS -o nonempty
fi

