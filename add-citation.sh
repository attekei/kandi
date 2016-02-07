set -uo pipefail
search_query=$1

printf "Fetching BibTeX entry from Google Scholar and adding it in the end of 'lahteet.bib' file... \n"
output="\n$(./scholar.py -c 1 --phrase "$1" --citation bt 2> /dev/null)"
echo "$output" >> sources.bib
echo "$output"
