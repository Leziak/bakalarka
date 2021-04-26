count=$(texcount -char thesis.tex | tail +12 | awk '{print $1}
' | awk -F+ '{print $1 + $2}' | awk '{s+=$1} END {print s}')

echo "characters: $count, pages: $(( count / 1800))"

