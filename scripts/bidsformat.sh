#!/bin/bash

cd derivatives/
cd fusion/

for i in $(seq -f "%03g" 2 60)
do

  cd sub-$i
  for file in *
  do
    if [[ "$file" != *"QUICK"* && "$file" != *"SLOW"* && "$file" != *"job"* ]]
    then
      echo "$file"
      echo  fichier renommé : ${file:0:12}_SLOW${file:12}
      mv $file ${file:0:12}_SLOW${file:12}
    fi
  done

  for file in *
  do
    if [[ "$file" == "malf"* ]]
    then
      echo "$file"
      echo  fichier renommé : sub-${i}_${file}
      mv $file sub-${i}_${file}
    fi
  done

  cd ../
done
