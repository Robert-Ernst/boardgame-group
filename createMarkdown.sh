for file in ./Rounds/* ; do
    # $file == ./Rounds/2021-11-27.md
    nosuffixfile=$(basename -s .md $file)
    # $nosuffixfile == 2021-11-27
    marked -i $file -o ./html/Rounds/$nosuffixfile.html
done