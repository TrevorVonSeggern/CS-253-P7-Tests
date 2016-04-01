#!/usr/bin/env bash

#Variables
EXE=(bin/PA*)
TestFolder=large

Compile=0
if [ "$Compile" != "0" ];
then
	#Building the source
	cd ..
	make buildTest
	cd test
	make
fi

#Testing the files
echo ''
echo Testing files:
echo ''

Parameters=$(cat tests/$TestFolder/parameters.txt)
cd tests/$TestFolder/
time ../../bin/PA7 ${Parameters}
cd ../../

echo ""
echo "Finished testing."
exit 0
