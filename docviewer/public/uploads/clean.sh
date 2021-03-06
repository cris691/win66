#!/bin/sh

# delete all view pages and images older than 3 days
cd $HOME/win66/docviewer/public/uploads
# remove all files older than 3 days
# find ./ -name 'file*' -type f -mmin +4319 -delete
# remove all files older than 3 days
# except the 3 'perm' files (my contact info and the example tesla view page)
find ./ -name 'file*' -type f ! -name 'filegr9k.56knk8r.jpg*' ! -name 'fileazjw.l7tq7e9.jpg*' ! -name 'filecp9z.ohbtt6u.pdf*' -mmin +4319 -delete


# delete all original documents older than 3 days
cd $HOME/win66/docviewer/pdfs
# remove all files older than 3 days
# find ./ -name 'file*' -type f -mmin +4319 -delete
# remove all files older than 3 days
# except the 3 'perm' files (my contact info and the example tesla view page)
find ./ -name 'file*' -type f ! -name 'filegr9k.56knk8r.jpg*' ! -name 'fileazjw.l7tq7e9.jpg*' ! -name 'filecp9z.ohbtt6u.pdf*' -mmin +4319 -delete


cd $HOME/win66/docviewer

# rebuild the hashes of the files that are left
./rebuild_hashes.js

# notify the process that the hashes have been rebuilt
kill -s ALRM $(cat pid.txt)

