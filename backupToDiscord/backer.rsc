:local fileName "all"
:local exportFileName "$fileName.rsc"

/export file=$fileName

:delay 2

:local fileContents [/file get $exportFileName contents]

/tool fetch url="http://IP:5000/upload" \ # Replace IP with a valid IP of the device running the python script. E.G. "192.168.1.1"
    http-method=post \
    http-header="Content-Type: application/x-www-form-urlencoded" \
    http-data=("filename=" . $exportFileName . "&data=" . $fileContents)

:delay 2
/file remove $exportFileName
