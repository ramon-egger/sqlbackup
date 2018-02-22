#!/bin/bash
#def var

		#Credentials

password0=/path/to/password_file #I recommend not to hardcode your credentials in this file. Write it in a file, saved into an 7-0-0 directory (root priv. only)
username0=/path/to/username_file #I recommend not to hardcode your credentials in this file. Write it in a file, saved into an 7-0-0 directory (root priv. only)



		#Database Info

bdir=/root/test/	 		#directory for your backup
dbase0="Database_name" 			#add more databases if you want
tempdir=/root/temp			#temporary data is been saved and deleted here. Do use a / at the end!
dt=`date +"%m-%d-%y"`			#define date for filename and structure
filename="Filename_here"		#define a filename which is infront of the $dt
filetype="sql"				#define filetype. Default = .sql
dump0="$tempdir""$filename"."$filetype"
error="0"
status="0"
		#Lets begin

while [$status="0"] do

while [$error="0"] do

if [ -d "$bdir"  ]; then

		if [ -d "$tempdir"  ]; then

	printf "Starting backup.."
	#mysqldump -u $username0 -p --databases $dbase0 --password=$password0 > $dump0

		else

			echo "$tempdir doesn't exist"

				read -p "Do you want to create it? (y/n)" choice0
				case "$choice0" in
					y|Y ) mkdir $tempdir && error="1";;
					n|N ) echo "Bye" && status="1";;
					* ) echo "invalid";;
				esac
		fi

		else

			echo "$bdir doesn't exist"

                                read -p "Do you want to create it? (y/n)" choice1
                                case "$choice1" in
                                        y|Y ) mkdir $bdir && error="1";;
                                        n|N ) echo "Bye" && status="1";;
                                        * ) echo "invalid";;
				esac

		fi

done

				echo "hmmm..."

                                read -p "Re-run script? (y/n)" choice2
                                case "$choice2" in
                                        y|Y ) error="0";;
                                        n|N ) status="1";;
                                        * ) echo "invalid";;
                                esac


done
