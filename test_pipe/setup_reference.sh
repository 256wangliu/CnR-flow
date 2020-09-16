#!/usr/bin/env bash
#Daniel Stribling
#Renne Lab, University of Florida
#
#This file is part of CnR-flow.
#CnR-flow is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#CnR-flow is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#You should have received a copy of the GNU General Public License
#along with CnR-flow.  If not, see <https://www.gnu.org/licenses/>.

# Source: https://github.com/BenLangmead/bowtie-majref
gunzip -v test_reference.tar.gz
tar -xvf test_reference.tar
cd test_reference
echo "Downloading grch38_1kgmaj.fa.gz"
#curl -# --retry-max-time 150 --retry 15 -o grch38_1kgmaj.fa.gz   ftp://ftp.ccb.jhu.edu/pub/data/bowtie_indexes/grch38_1kgmaj.fa.gz
wget --no-verbose --waitretry=60 --retry-connrefused  ftp://ftp.ccb.jhu.edu/pub/data/bowtie_indexes/grch38_1kgmaj.fa.gz
gunzip -v grch38_1kgmaj.fa.gz

echo "Downloading grch38_1kgmaj_bt2.zip"
mkdir grch38_1kgmaj_bt2_db; cd grch38_1kgmaj_bt2_db
#curl -# --retry-max-time 150 --retry 15 -o grch38_1kgmaj_bt2.zip ftp://ftp.ccb.jhu.edu/pub/data/bowtie2_indexes/grch38_1kgmaj_bt2.zip
wget --no-verbose --waitretry=60 --retry-connrefused ftp://ftp.ccb.jhu.edu/pub/data/bowtie2_indexes/grch38_1kgmaj_bt2.zip
unzip grch38_1kgmaj_bt2.zip
echo "Done with reference downloads."
cd ../../



