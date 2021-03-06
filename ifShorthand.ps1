
$boolean = $false;
$string = "false";
$emptyString = "";
If($boolean){
# this does not run because $boolean is false
Write-Host "Shorthand If conditions can be nice, just make sure they are always boolean."
}
If($string){
# This does run because the string is non-zero length
Write-Host "If the variable is not strictly null or Boolean false, it will evaluate to true as
it is an object or string with length greater than 0."
}
If($emptyString){
# This does not run because the string is zero-length
Write-Host "Checking empty strings can be useful as well."
}
If($null){
# This does not run because the condition is null
Write-Host "Checking Nulls will not print this statement."
}
