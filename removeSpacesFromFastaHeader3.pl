#!/usr/bin/perl -w

# removeSpacesFromFastaHeader3.pl
# 07/11/2011
# Maria Stalteri

# removes problematic spaces (v1) and data (v2)  from RefSeq fasta header lines
# from files to be used with flowsim and Newbler

# 13/12/2011 v3: more generic regex, to cope with the Echino_taeniae files

# 07/11/2011 v2: removes everything after the NC_ accession number
# normally there is a space bet. accession number and species name

use strict;

# my $string1 = "";


while (my $line = <>){
    # delete everything after the RefSeq |NC_dddddd.d| identifier
    # $line =~ s/^(>gi\|\d+\|.+\|)\ \w+.+/$1/;
   
    # made regex more generic
    $line =~ s/^(>\S+)\ \w+.+/$1/; 

    # check whether regex is working
    # $string1 = $1;
    # print "\n", $string1, "\n";

    print $line;


}  # end while
