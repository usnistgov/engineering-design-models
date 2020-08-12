#!/gicl/projs/bin/perl
{
    local $/;
    open(FIN, "<$ARGV[0]");
    $wrl = <FIN>;
    $wrl=~ s/IndexedFaceSet/IndexedLineSet/g;
    print $wrl;

}
