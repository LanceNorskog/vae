# run on colab, expand and scramble training pairs by:
#   group captions by image_id
#   print hash(pair), pair for all pairs of captions
#   sort on hash
#   strip hash and leave sentence pairs
#   separate into 1000-line files for ease. 
# Shuffle with hash/sort to scramble the data pairs. Keras's scrambler is not enough when walking multiple input files.

mkdir -p train_data
mkdir -p test_data
rm -f train_data/*
rm -f valid_data/*
python mscoco_group.py < train.tsv | sort | cut -f2,3 | (cd train_data; split -l1000)
python mscoco_group.py < validate.tsv | sort | cut -f2,3  | (cd valid_data; split -l1000)
ls *
