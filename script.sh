#!/bin/sh
path_psudohash=./psudohash/psudohash.py
path_dataSource=./data-phrases.txt
countWordsInDataSource=`cat data-phrases.txt | wc -w`
echo reading from datasource: ${path_dataSource}
echo total phrases to mutate: ${countWordsInDataSource}

while IFS= read -r line; do
    echo "phrase read from file: <$line>"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
    echo "mutating <$line>"
    yes | python3 ${path_psudohash} -w ${line} -y 2023 --common-paddings-before -q -o "mutation-$line.txt"
    echo "mutation complete for <$line>"
    mutationCount=`cat "mutation-$line.txt" | wc -w`
    echo "number of mutations generated for <$line>: $mutationCount"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n"
done < ${path_dataSource}

