using namespace System.Security.Principal
function Test-IsLocalAdmin{
    $identity = [WindowsIdentity]::GetCurrent()
    $principal = [WindowsPrincipal]$identity
    $role = [WindowsBuiltInRole]"Administrator"
    $principal.IsInRole($role)
    #can also start using this if not admin
    # ref https://stackoverflow.com/questions/7690994/running-a-command-as-administrator-using-powershell
    # $arguments = "& '" +$myinvocation.mycommand.definition + "'"
    # $null = Start-Process powershell -Verb runAs -ArgumentList $arguments
}

Test-IsLocalAdmin