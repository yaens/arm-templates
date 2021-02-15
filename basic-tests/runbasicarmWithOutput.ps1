$templateFile = "basicarmWithOutput.json"
$today=Get-Date -Format "HHmmss-MM/dd/yyyy"
$deploymentName="$templateFile-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -ResourceGroupName rg-test `
  -TemplateFile $templateFile `
  -StorageSKU "Standard_LRS" `
  -storageName "st2yklearningdevweu"
