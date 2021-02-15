$templateFile = "basicarmWithOutput.json"
$today=Get-Date -Format "HHmmss-MM/dd/yyyy"
$deploymentName="$templateFile-"+"$today"
$output = New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -ResourceGroupName rg-test `
  -TemplateFile $templateFile `
  -storageAccountType "Standard_LRS"
