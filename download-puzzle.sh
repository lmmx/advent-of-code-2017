DAYNUM=$(date +%d | bc)
DAYDIR=$(date +%d)
if [ -d "$DAYDIR" ]; then
    DAYHTML="./$DAYDIR/$DAYDIR.html"
    if [ -e $DAYHTML ]; then
        >&2 echo "Watch out - there's already a file at $DAYHTML!"
    else
        wget "http://adventofcode.com/2017/day/$DAYNUM" -O "$DAYHTML"
        pandoc -f html -t markdown "$DAYHTML" > "./$DAYDIR/README.md"
	# TODO: clean the HTML as for day 1 with a parser cf. manually
        cp -r "./templates/julia/" "./$DAYDIR/"
    fi
else
    >&2 echo "Current day is not a directory! Maybe 'tis not the season..."
    # to deck the halls run:
    # for i in {1..9}; do mkdir 0$i; done; for i in {10..25}; do mkdir $i; done
fi
