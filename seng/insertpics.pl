use DBD::Pg;
my $dbname = "CAD";
my $dbh = DBI->connect("dbi:Pg:dbname=$dbname;host=voxel;port=5432", "postgres", "");
my $temptable = "temp";
$prefix='/usr/remote/data5/repository/';
my $select = "SELECT partid, filename FROM temp WHERE partid is not null AND filename ~ \'\\\.sat\$\' ORDER BY partid";
$sth = $dbh->prepare($select) || die $sth->errstr;
$sth->execute() || die $sth->errstr;
my $res = $sth->fetchall_arrayref();
my $insert = 'INSERT into pic values(?,?)';
$sth = $dbh->prepare($insert) || die $sth->errstr;
$dbh->{AutoCommit} = 0;
for (my $i = 0; $i < @{$res}; $i++){
    my $png = $prefix.$res->[$i][1].'.png';
    if(-f $png){
	print $png."\n";
	my $oid = $dbh->func($png, 'lo_import')|| die $dbh->errstr."$png\n";
	$sth->execute($res->[$i][0],$oid) || die $sth->errstr;
	if(($i % 30) == 29){
	    $dbh->{AutoCommit} = 1;
	    if(($i % 500) == 499){
		$dbh->do("VACUUM ANALYZE") || die $dbh->errstr;
	    }
	    $dbh->{AutoCommit} = 0;
	}
    }
}
$dbh->{AutoCommit} = 1;
$dbh->do("VACUUM ANALYZE") || die $dbh->errstr;
$dbh->disconnect();
