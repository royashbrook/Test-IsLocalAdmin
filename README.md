# Test-IsLocalAdmin

PS Module that returns if current user is a local administrator.

Could be used to start a new instance of the script like below if desired:

```ps1
if(!Test-IsLocalAdmin){
    # ref https://stackoverflow.com/questions/7690994/running-a-command-as-administrator-using-powershell
    $arguments = "& '" +$myinvocation.mycommand.definition + "'"
    $null = Start-Process powershell -Verb runAs -ArgumentList $arguments
}
```