$dir = $PSScriptRoot
$src = Join-Path $dir "src"
$out = Join-Path $dir "bin"
$modulePath = Join-Path $dir "psmbinary"
Push-Location $dir
dotnet build $src -o $out
Copy-Item (Join-Path $modulePath "*") $out -Recurse -Force