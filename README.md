# policyfiles

Miscellaneous Policyfiles that are used to push cookbooks to various nodes for demo purposes.

Regenerate the Lock Files every time with this bit of code:

```ps
$policies = Get-ChildItem *.rb
foreach $policy in $policies { chef install $policy.name }
```
