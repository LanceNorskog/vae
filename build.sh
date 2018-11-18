sh script.sh < captions_train2014.json > train.tsv 
#python mscoco.py | sort | cut -f2,3 | gzip -9 > train
sh script.sh < captions_val2014.json > validate.tsv
# python mscoco.py | sort | cut -f2,3 | gzip -9 > validate.tsv.gz
