#!/gicl/projs/bin/perl -w
use File::Find;
if (@ARGV != 1){
    print "usage: $0 <startdir>\n";
    exit(1);
}
$startdir = $ARGV[0];
#print $startdir;
find(\&wanted, $startdir);


sub wanted{
    my $file = $_;
    $feat = $file;
    substr($feat, -3,3) = 'f.sat';
    if($file =~ m/\.hh\.sat$/){
	opendir(THISDIR, ".");
	@filelist = grep !/^\.\.?$/, readdir(THISDIR);
	if(!(grep {$_ =~ /$feat/} @filelist)){
	    print $File::Find::name."\n";
	}
    }
}
