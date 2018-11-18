jq -r  '.annotations[]|[.image_id,.caption]| @tsv'
