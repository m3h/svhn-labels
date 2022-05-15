#!/bin/bash

rm -rf train test

wget http://ufldl.stanford.edu/housenumbers/train.tar.gz
wget http://ufldl.stanford.edu/housenumbers/test.tar.gz

tar xaf train.tar.gz
tar xaf test.tar.gz

matlab -nodisplay -nosplash -nodesktop -r "convert_struct; exit;"
