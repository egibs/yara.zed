import "math"

private global rule test: tag1 {
  strings:
    $hello = "hello world"
  condition:
    all of them
}

private rule test2: tag2 tag3 tag4 tag5 {
  strings:
    $hello = "hello world"
    $ = "test"
    $ = "test2"
    $ = "test3"
  condition:
    filesize > 1MB and all of them
}

private rule test3: tag4 tag5 {
  strings:
    $hello = "hello world"
    $test = "test"
    $ = "test2"
    $ = "test3"
  condition:
    filesize > 2MB and any of them
}
