# Create VM rig on a specific vNet for load testing using VSTS CLT service

[![Deploy to Azure](
http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2fdpksinghal%2fazure-quickstart-templates%2fmaster%2f301-vsts-clt-loadagentrig-ontargetvnet%2fazuredeploy.json)

<a href="http://armviz.io/#/?load=https%3a%2f%2fraw.githubusercontent.com%2fdpksinghal%2fazure-quickstart-templates%2fmaster%2f301-vsts-clt-loadagentrig-ontargetvnet%2fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>

<img src="https://raw.githubusercontent.com/dpksinghal/azure-quickstart-templates/master/301-vsts-clt-loadagentrig-ontargetvnet/CLTAgentsOnVnet.png"/>
<b> Load generators inside a user's virtual network </b>

Using this template, you can create your own load test rig on Azure IaaS virtual machines inside a specific virtual network. The test rig will be configured for your Visual Studio Team Services (VSTS) account and can be used to run cloud-based load tests using Visual Studio. The cloud-load testing service will use this registered rig instead of provisioning one dynamically. This rig will be capable to access the resources reachable in the virtual network. Sample parameter values are as follows:

```json
{
    "VSTSAccountName": "xyz",    
    "PATToken": "<get pat token for VSTS account>",
    "vmCount": 1,
    "adminUsername": "admin",
    "adminPassword": "password" 
	"existingVirtualNetworkResourceGroup" : ""
	"existingVirtualNetworkName" : ""
	"subnetName" : ""
}
```
