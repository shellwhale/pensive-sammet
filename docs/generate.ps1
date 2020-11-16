$files = Get-ChildItem -Filter *.drawio;

foreach ($file in $files) {
    $name = $file.Name -replace '.drawio','';
    $fileName = $file.Name;
    & draw.io -x --crop -o .\exports\$name.pdf $fileName;
}
