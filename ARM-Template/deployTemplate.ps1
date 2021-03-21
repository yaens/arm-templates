$templateFile = "template.json"
$parameterFile = "parameters.json"
$today=Get-Date -Format "HHmmss-MM/dd/yyyy"
$deploymentName="$templateFile-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -ResourceGroupName  kev4 `
  -TemplateFile $templateFile `
  -ParameterFile $parameterFile