$templateFile = "basicarm.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="$templateFile-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -ResourceGroupName rg-test `
  -TemplateFile $templateFile