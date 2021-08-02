<?php
$result = json_decode("{ \"a\": 1, \"b\": 2 }");
print($result->a + $result->b);
