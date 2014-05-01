clear
<#
.SYNOPSIS
	<>  
.DESCRIPTION
	<>
.EXAMPLE
	<> 
.PARAMETER DeploymentType
	<>
.NOTES
    <>
.LINK 
	<>
#>

## Variables ##
$fileContents = @()

try{

    $fileForLinks = ".\Data\fileLocations.txt"
    readFile($fileForLinks)


}Catch [System.IO.FileNotFoundException]{
    Write-Debug "File not found"
    Write-EventLog $_.Exception.Message

}Catch [Exception]{
    Write-Debug "Unhandled error caught"
    Write-EventLog Exception.Message
}

function readFile($file){
    #make that a required param

    $fileContents = Get-Content($file)

    proccessLinks($fileContents)
}

function proccessLinks($list){
$client = new-object System.Net.WebClient

    foreach($item in $list){
        Write-Host("Processing $item")
        $client.DownloadFile("$item,".\Data\Temp\##Regex to get file##file.txt")
    }
}