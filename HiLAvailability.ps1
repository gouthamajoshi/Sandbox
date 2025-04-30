Write-Output  ""
Write-Output  "-------------------------------------------------------"
Write-Output  " MOTION HARDWARE IN LOOP STATUS"
Write-Output  "-------------------------------------------------------"
Write-Output  ""

$OurHilMachines = 'hil-bagheera','hil-zira','hil-sarafina'
foreach ($HilBox in $OurHilMachines)
{
	$k = 0
    Write-Output "Searching on:  ", $HilBox
	try{
	$userInfo =  (cmd /c "query user /server:$HilBox") | Out-String -Stream
	#Write-Output "Infos" $userInfo
	For ($i = 0; $i -le $userInfo.Count; $i++){
		#Write-Output $userInfo[$i]
		#Write-Output "No. " $i
		#Write-Output "Info User" $($userInfo[$i])
		If ($($userInfo[$i]) -like "*Activ*"){
			$User = (($($userInfo[$i]) -Split " ")[1] -Split " ")[0]
			#Write-Output "Active User" $User
			if($User -eq 's126715'){ Write-Output "S-Admin (s126715) is active on :", $HilBox}
		    elseif($User -eq 'u390234'){ Write-Output "Gouthama.J (U390234) is active on :", $HilBox}
		    elseif($User -eq 'u373209'){ Write-Output "Dominic.F (U373209) is active on :", $HilBox}
		    elseif($User -eq 'u334920'){ Write-Output "Gennadii.C (U334920)is active on :", $HilBox}
			elseif($User -eq 'u334919'){ Write-Output "Leonardo.B (U334919)is active on :", $HilBox}
			elseif($User -eq 'u382219'){ Write-Output "Logeesan.A (U382219)is active on :", $HilBox}
		    elseif($User -eq 'u379158'){ Write-Output "Shashank.T (u327015)is active on :", $HilBox}
			elseif($User -eq 'u409324'){ Write-Output "Mohamed.H (U409324) is active on :", $HilBox}
		    elseif($User -eq 'u404805'){ Write-Output "Riddhi.N (U404805) is active on :", $HilBox}
		    elseif($User -eq 'desc0724'){ Write-Output "Stephanie.K (DESC0724) is active on :", $HilBox}
		    elseif($User -eq 'u432359'){ Write-Output "Syed Ans.B.K (U432359) is active on :", $HilBox}
		    elseif($User -eq 'desc0336'){ Write-Output "Thomas.Z (DESC0336) is active on :", $HilBox}
			elseif($User -eq 'u323436'){ Write-Output "Sunil.I (U323436) is active on :", $HilBox}
			else { Write-Output "Unknown user" $User "is on :" $HilPcName }
			Break
		}
	}
    Write-Output  ""
	Write-Output  "---------------------------------------------"
	}
 	catch {  
	   Write-Output "HIL-PC is currently not available!`n" 
	   Write-Output  ""
	}
}

Write-Output  "GO GRAB THEM IF THEY ARE AVAILABLE"
Write-Output  "-------------------------------------------------------"
Read-Host 'PRESS ENTER TO EXIT!'