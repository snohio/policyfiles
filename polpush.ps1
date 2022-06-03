$env:CHEF_PROFILE = "dca"
Remove-Item *.lock.json
$policies = Get-ChildItem *.rb
foreach ($policy in $policies) { chef install $policy.name }
$policyLocks = Get-ChildItem *.lock.json
foreach ($policyLock in $policyLocks) { 
  chef push dev $policyLock.name
  chef push prod $policyLock.name
}