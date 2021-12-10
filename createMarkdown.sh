for file in ./Rounds/* ; do
    # $file == ./Rounds/2021-11-27.md
    nosuffixfile=$(basename -s .md $file)
    # $nosuffixfile == 2021-11-27
    if [ ! -f "./html/Rounds/$nosuffixfile.html" ]; then
    marked -i $file -o ./html/Rounds/$nosuffixfile.tmp
    sed -e "/replacemeforroundscontent/{r ./html/Rounds/$nosuffixfile.tmp" -e "d}" ./html/roundsTemplate.html > ./html/Rounds/$nosuffixfile.html
    rm ./html/Rounds/$nosuffixfile.tmp
    fi
done

