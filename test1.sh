#! /bin/bash


mvnDir=$HOME/Documents/testWorkspace01/testeBoot
targetDir=$mvnDir/target
copyTo=$(pwd)/destinoDir

#saves the current directory,
#enter in project directory, 
#compile and return to the original directory
pushd . 1>/dev/null
cd $mvnDir
mvn clean package
popd 1>/dev/null
if [ "$?" = 1 ]
then
 exit 1
fi

jarname=$(ls $targetDir/*.jar)
jarname=$(basename $jarname)
index=$(expr match $jarname [a-zA-Z\-]*[0-9])
jarnameWithoutVersion=${jarname:0:$index-2}


mkdir -p $copyTo
rm $copyTo/$jarnameWithoutVersion*
cp $targetDir/$jarname $copyTo






