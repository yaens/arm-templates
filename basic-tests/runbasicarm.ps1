$templateFile = "basicarm.json"
$today=Get-Date -Format "HHmmss-MM/dd/yyyy"
$deploymentName="$templateFile-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -ResourceGroupName rg-test `
  -TemplateFile $templateFile