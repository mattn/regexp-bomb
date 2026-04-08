<?php
$start = microtime(true);
$result = preg_match('/(a+)*b$/', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba');
$elapsed = microtime(true) - $start;
echo "result: " . ($result ? "true" : "false") . "\n";
printf("elapsed: %.6fs\n", $elapsed);
