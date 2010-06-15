use Net::Ping;
my @host_array=('192.168.50.101', '192.168.50.100',);

$p = Net::Ping->new();

foreach $host (@host_array) {
    if ( $p->ping($host) ){
        print "$host is alive.\n" if $p->ping($host);
    }
    else {
        print "no response from $host.\n";
    }
}
$p->close();
