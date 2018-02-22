#!/bin/bash
#def var

		#Credentials

password0=/path/to/password_file #I recommend not to hardcode your credentials in this file. Write it in a file, saved into an 7-0-0 directory (root priv. only)
username0=/path/to/username_file #I recommend not to hardcode your credentials in this file. Write it in a file, saved into an 7-0-0 directory (root priv. only)




		#Database Info

bdir=/path/to/backup_directory 		#directory for your backup
dbase0="Database_name" 			#add more databases if you want
tempdir=/path/to/temporary_directory	#temporary data is been saved and deleted here. Do use a / at the end!
dt=`date +"%m-%d-%y"`			#define date for filename and structure
filename="Filename_here"		#define a filename which is infront of the $dt
filetype="sql"				#define filetype. Default = .sql

dumpname="$filename"."$filetype"
		#Lets begin

#mkdir -p $bdir
printf "Starting backup..\n"
echo "$dumpname"
#mysqldump -u $username0 -p --databases $dbase0 --password=$password0 > $tempdir
