# SVHN labels

This repo contains the labels from the 'Street View House Numbers (SVHN)' dataset. Access the original here: http://ufldl.stanford.edu/housenumbers/

The labels are provided in Matlab format - which, as a Pythoneer, I struggled with.

I hacked together the `convert_struct.m` Matlab script to read the SVHN labels, and re-save them as an accessible csv file.

There are two csv files, `train/digitStruct.csv` and `test/digitStruct.csv`, approximately in this format:
```
name;label;top;left;height;width
1.png;1;77;246;219;81
1.png;9;81;323;219;96
2.png;2;29;77;32;23
```

Where `name` is the image's file name, `label` refers to the digit, `top`, `left`, `height`, and `width` describe the bbox of that digit.
There can be multiple rows in the csv file for one image file (as there can be multiple digits).
