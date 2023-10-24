#!/bin/bash
IFS=$'\n'
for x in $(cat "downloadedFiles/Global YouTube Statistics.csv")
#for x in $(cat "ytdata.txt")
do
	IFS=','
	for words in $x
	do
		if [[ $words == "United States" ]]
		then
			i=0
			for cat in $x
			do
	
				if [[ $cat == "Music" ]] && [ $i -lt 6 ]
				then
					echo $x >> "Worksheet 5/United States/Music.txt"
					break
		
				elif [[ $cat == "Entertainment" ]] && [ $i -lt 6 ]
				then
					echo $x >> "Worksheet 5/United States/Entertainment.txt"
					break

				elif [[ $cat == "Gaming" ]] && [ $i -lt 6 ]
				then
					echo $x >> "Worksheet 5/United States/Gaming.txt"
					break

				elif [[ $cat == "Comedy" ]] && [ $i -lt 6 ]
				then
					echo $x >> "Worksheet 5/United States/Comedy.txt"
					break
				fi
				((i=i+1))
			done
		fi

	done	
done
