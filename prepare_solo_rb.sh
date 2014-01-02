#!/bin/bash

$PWD = `pwd`

rm ./solo.rb
echo file_cache_path "$PWD" > solo.rb
echo cookbook_path "$PWD/cookbooks" >> solo.rb
echo json_attribs "$PWD/node.json" >> solo.rb

echo "solo.rb contents:"
cat solo.rb

