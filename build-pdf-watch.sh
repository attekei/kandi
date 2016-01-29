set -uo pipefail
main_tex_file=$1

printf "Installing dependencies if needed... \n"
npm set progress=false
npm install

printf "Compiling on file changes... \n"
./node_modules/nodemon/bin/nodemon.js -e "tex,bib" --exec "./build-pdf.sh $main_tex_file"
