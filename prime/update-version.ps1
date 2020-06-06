$version = $args[0]
Write-Host "Setting version=[$version]."
$FullPath = $args[1]
Write-Host "File=[$FullPath]."

[xml]$content = Get-Content $FullPath
$content.package.metadata.version = $version
echo $content.package.metadata
$content.Save($FullPath)
