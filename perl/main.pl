use Time::HiRes qw(gettimeofday tv_interval);

my $start = [gettimeofday];
my $result = ("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba" =~ /(a+)*b$/);
my $elapsed = tv_interval($start);
print "result: " . ($result ? "true" : "false") . "\n";
printf "elapsed: %.6fs\n", $elapsed;
