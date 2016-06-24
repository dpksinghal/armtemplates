# Load test rig in a specific VNet for cloud-load test service

[![Deploy to Azure](
http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2fdpksinghal%2fazure-quickstart-templates%2fmaster%2f301-vsts-clt-loadagentrig-ontargetvnet%2fazuredeploy.json)

<a href="http://armviz.io/#/?load=https%3a%2f%2fraw.githubusercontent.com%2fdpksinghal%2fazure-quickstart-templates%2fmaster%2f301-vsts-clt-loadagentrig-ontargetvnet%2fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
          
<img src="https://raw.githubusercontent.com/dpksinghal/armtemplates/master/301-vsts-cloudloadtest-rigUsingVNet/CLTAgentsOnVnet.png"/>
<b> Load generators inside a user's virtual network </b>

Using this template, you can create your own load test rig on Azure IaaS virtual machines in a specific VNet in order to load test applications that do not have a public end-point. The load generating agent machines will be created in the same VNet as your application. The test rig will be configured for your Visual Studio Team Services (VSTS) account and can be used to run cloud-based load tests using Visual Studio. The cloud-load testing service will use this registered rig instead of provisioning one dynamically.

```json
{
    "vstsAccountName": "<VSTS account name using for CLT>",
    "PAT": "<Get PAT token for VSTS account>",
    "agentCount": 1,
    "adminUsername": "<Admin user name>",
    "adminPassword": "<password>" 
	"existingVirtualNetworkResourceGroup": "<Resource group name where the Vnet exists"
	"existingVirtualNetworkName": "<VNet name>"
	"subnetName": "<Subnet under VNet where you want to deployment load agents>"
}
```
