:local fileName "all"
:local exportFileName "$fileName.rsc"
:local webhookUrl "your webhook url"

/export file=$fileName

:delay 3

:local fileContents [/file get $exportFileName contents]
:local chunkSize 1800
:local totalLength [:len $fileContents]
:local currentPos 0
:local chunk
:local payload

:while ($currentPos < $totalLength) do={

    :if (($currentPos + $chunkSize) > $totalLength) do={
        :set chunk [:pick $fileContents $currentPos $totalLength]
    } else={
        :set chunk [:pick $fileContents $currentPos ($currentPos + $chunkSize)]
    }

    # URL-encode: replace space with %20, etc. -- not perfect, but Discord accepts most plain text
    :set payload ("content=" . $chunk)

    /tool fetch url=$webhookUrl \
        http-method=post \
        http-header="Content-Type: application/x-www-form-urlencoded" \
        http-data=$payload

    :set currentPos ($currentPos + $chunkSize)

    :delay 1
}

:delay 2
/file remove $exportFileName
