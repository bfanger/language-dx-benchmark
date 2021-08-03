<?php
$result = json_decode("{ \"a\": 1, \"b\": 2 }");
printf("%s\n", $result->a + $result->b);
