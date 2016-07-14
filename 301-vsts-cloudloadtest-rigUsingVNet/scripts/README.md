# Useful scripts for VMs configured with CLT

Script - GetStaticMachines.ps1

Mandatory params:
		a. TeamServicesAccountName
		Please enter the VSTS account name. If you access your VSTS account using 'https://yourAccountName.visualstudio.com', enter yourAccountName.
		b. PATToken
		Personal Access Token (PAT) for the VSTS account. You should select the  scope as 'Load test (read and write)'. Please refer 'https://www.visualstudio.com/en-us/get-started/setup/use-personal-access-tokens-to-authenticate' for more details.
	
	Example:
	.\GetStaticMachines.ps1 -TeamServicesAccountName xyz -PATToken gzdw6bnzk2q73qsqxukmfonzycscdgmsl2quhqo24so7hrplcfdsatcq
	
	Sample Output:
		Account Uri -  https://xyz.vsclt.visualstudio.com
		
		
		machineName     status  lastHeartBeat
		-----------     ------  -------------
		BUGBASHCLIENT64 Offline 2016-03-07T17:43:03.1047987Z
		DDDSINGHAL015   Offline 2016-04-06T05:26:27.794942Z
		DDDSINGHAL016   Free    2016-04-26T12:41:00.6548647Z
		DDDSINGHAL017   Free    2016-04-26T12:40:59.5005437Z
		DPK-PARAM       Offline 2016-04-26T06:23:25.4575782Z
		DPK-ZAR         Offline 2016-03-14T09:27:07.4573688Z
	
	With this user can get idea about the status of his machines configured for load test run.