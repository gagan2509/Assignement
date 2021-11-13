New-AzResourceGroup -Name ExampleGroup -Location "Central US"

New-AzResourceGroupDeployment `
  -Name ExampleDeployment `
  -ResourceGroupName ExampleGroup `
  -TemplateFile "\Problem1\ParentTemplate\MainTemplate.json"