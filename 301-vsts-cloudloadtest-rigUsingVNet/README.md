# Load test rig in a specific VNet for testing private apps

[![Deploy to Azure](
http://azuredeploy.net/deploybutton.png)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2fdpksinghal%2farmtemplates%2fmaster%2f301-vsts-cloudloadtest-rigUsingVNet%2fazuredeploy.json)

<a href="http://armviz.io/#/?load=https%3a%2f%2fraw.githubusercontent.com%2fdpksinghal%2farmtemplates%2fmaster%2f301-vsts-cloudloadtest-rigUsingVNet%2fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>
          
<img src="images/CLTAgentsOnVnet.png"/>
<b> Load generators inside a user's virtual network </b>

Using this template, you can create your own load test rig on Azure IaaS virtual machines in order to test applications that do not have a public end-point. The load generating agent machines will be created in the specified VNet. This VNet should have line of sight to the application you want to test. The test rig will be configured for your Visual Studio Team Services (VSTS) account and can be used to run cloud-based load tests using Visual Studio.

```json
{
    "VSTSAccountName": "<VSTS account name using for CLT>",
    "VSTSPersonalAccessToken": "<Get PAT token for VSTS account>",
    "AgentCount": 1,
    "AdminUsername": "<Admin user name>",
    "AdminPassword": "<password>" 
	"ExistingVNetResourceGroupName": "<Resource group name where the Vnet exists"
	"ExistingVNetName": "<VNet name>"
	"SubnetName": "<Subnet under VNet where you want to deployment load agents>"
}
```
