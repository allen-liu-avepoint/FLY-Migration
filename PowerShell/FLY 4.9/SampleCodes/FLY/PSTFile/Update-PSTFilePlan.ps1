﻿<# /********************************************************************
 *
 *  PROPRIETARY and CONFIDENTIAL
 *
 *  This file is licensed from, and is a trade secret of:
 *
 *                   AvePoint, Inc.
 *                   525 Washington Blvd, Suite 1400
 *                   Jersey City, NJ 07310
 *                   United States of America
 *                   Telephone: +1-201-793-1111
 *                   WWW: www.avepoint.com
 *
 *  Refer to your License Agreement for restrictions on use,
 *  duplication, or disclosure.
 *
 *  RESTRICTED RIGHTS LEGEND
 *
 *  Use, duplication, or disclosure by the Government is
 *  subject to restrictions as set forth in subdivision
 *  (c)(1)(ii) of the Rights in Technical Data and Computer
 *  Software clause at DFARS 252.227-7013 (Oct. 1988) and
 *  FAR 52.227-19 (C) (June 1987).
 *
 *  Copyright © 2017-2022 AvePoint® Inc. All Rights Reserved.
 *
 *  Unpublished - All rights reserved under the copyright laws of the United States.
 */ #>
 
$ApiKey = '<Api Key>'
$BaseUri = '<Base Uri>'


try
{
    # For example:$PlanName = 'Plan Name' or $PlanName = 'Plan Id' 
    $PlanName = ''

	# If you need to change the plan name.For example: $NewName = 'New Name'
    $NewName = ''

	# Keep the original policy:$Policy = ''
	# Modify the policy:$Policy = 'policy Name or Id'
    $Policy = ''

    # Keep original Migration database : $Database=''
	# Modify Migration Database: $Database = 'Database Id or Database Name(Database Server)'
	# Disable Migration Database: $DisableMigrationDatabase = $True
    $Database=''
    # For example: $DisableMigrationDatabase = $False/$True
	$DisableMigrationDatabase = $False
	
	# Keep original PlanGroup : $PlanGroup=@()
	# Modify PlanGroup: $PlanGroup = @('Plangroup Id1 or Name1','Plangroup Id2 or Name2')
	# Disable PlanGroup: $DisablePlanGroup = $True
    $PlanGroup =@()
    # For example: $DisablePlanGroup = $False/$True
	$DisablePlanGroup = $False

	# Keep original Schedule : $Schedule = $Null
	# Modify Schedule: 
    #   Once : $Schedule = New-SimpleScheduleObject -IntervalType Once -StartTime ([Datetime]::Now).AddMinutes(2).ToString('o')
	#   Daily : $Schedule = New-SimpleScheduleObject -IntervalType Daily -StartTime ([Datetime]::Now).AddMinutes(2).ToString('o') -LastIncrementalMigrationStartTime ([Datetime]::Now).AddDays(1).ToString('o')
	#   For more information about the schedule setting format, please see the  New-ScheduleObject.ps1 file in '...\SampleCodes\FLY\Common\' directory 
	# Disable Schedule: $DisableSchedule = $true
	# For more information about the schedule setting format, please see the  New-ScheduleObject.ps1 file in '...\SampleCodes\FLY\Common\' directory 
    $Schedule = New-SimpleScheduleObject -IntervalType Once -StartTime ([Datetime]::Now).AddMinutes(2).ToString('o')
    # For example: $DisableSchedule = $false/$true
    $DisableSchedule = $false

    $Data = New-UpdatePSTFilePlanObject -DisplayName $PlanName  -NewName $NewName -Policy $Policy -PlanGroups $PlanGroup -DisablePlanGroup:$DisablePlanGroup  -Schedule $Schedule -DisableSchedule:$DisableSchedule  -DatabaseId $Database  -DisableMigrationDatabase:$DisableMigrationDatabase 

	$response = Update-PSTFilePlan -APIKey $ApiKey -BaseUri $BaseUri -Settings $Data

	$response.Content
}
Catch
{
   $ErrorMessage = $Error[0].Exception
   Write-Host -ForegroundColor Red $ErrorMessage.Message
   Write-Host -ForegroundColor Red $ErrorMessage.Response.Content
}
# SIG # Begin signature block
# MIIi8wYJKoZIhvcNAQcCoIIi5DCCIuACAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUSlgVwn8iAio/D2nxcerbvOxf
# 846ggh0ZMIIFLTCCBBWgAwIBAgIQAybM8QJy2GqRSHGucYhV3TANBgkqhkiG9w0B
# AQsFADByMQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYD
# VQQLExB3d3cuZGlnaWNlcnQuY29tMTEwLwYDVQQDEyhEaWdpQ2VydCBTSEEyIEFz
# c3VyZWQgSUQgQ29kZSBTaWduaW5nIENBMB4XDTIwMTEwMzAwMDAwMFoXDTIzMTEw
# NzIzNTk1OVowajELMAkGA1UEBhMCVVMxEzARBgNVBAgTCk5ldyBKZXJzZXkxFDAS
# BgNVBAcTC0plcnNleSBDaXR5MRcwFQYDVQQKEw5BdmVQb2ludCwgSW5jLjEXMBUG
# A1UEAxMOQXZlUG9pbnQsIEluYy4wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
# AoIBAQDbkeodMZTyIxQr/Vt7VlDpjm9D9mxRJ7V3g1f82yldPyAP1PlBczHklw9g
# F9+kSQXS96v0fnQcQWte5Fx29TMKnomAgKvMkr/LJc0W0dZHyIl61DCUhQZu6J2b
# T6TPQKIuV7eQ1ZYs+S+waw8SN+dE3WX8qd131OlL7q2yHLT0ErYZQObgv39L2Z6+
# u3dE8MFyAUmWDQnerY1+scb78kNwVS4o2xxi6AKeLFQ+ZWFh6wM2lcogPwCTh0mI
# 1cU++AHO4gVgH9yPc75oZa0GzKzH9dqmf8OW+tnQk9QPAhWP6ELtlrm3AgsGfGP+
# zcaIB1JoAbARX9sek3vkTx3t5XAhAgMBAAGjggHFMIIBwTAfBgNVHSMEGDAWgBRa
# xLl7KgqjpepxA8Bg+S32ZXUOWDAdBgNVHQ4EFgQU7JjCyzkrLNPHmZmqTsPNmUEs
# CuowDgYDVR0PAQH/BAQDAgeAMBMGA1UdJQQMMAoGCCsGAQUFBwMDMHcGA1UdHwRw
# MG4wNaAzoDGGL2h0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9zaGEyLWFzc3VyZWQt
# Y3MtZzEuY3JsMDWgM6Axhi9odHRwOi8vY3JsNC5kaWdpY2VydC5jb20vc2hhMi1h
# c3N1cmVkLWNzLWcxLmNybDBMBgNVHSAERTBDMDcGCWCGSAGG/WwDATAqMCgGCCsG
# AQUFBwIBFhxodHRwczovL3d3dy5kaWdpY2VydC5jb20vQ1BTMAgGBmeBDAEEATCB
# hAYIKwYBBQUHAQEEeDB2MCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2Vy
# dC5jb20wTgYIKwYBBQUHMAKGQmh0dHA6Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9E
# aWdpQ2VydFNIQTJBc3N1cmVkSURDb2RlU2lnbmluZ0NBLmNydDAMBgNVHRMBAf8E
# AjAAMA0GCSqGSIb3DQEBCwUAA4IBAQB4z6WmQmBTtbLCOF4iUzcK2DjvOEkv1ukR
# LPESBxMCET6tY6659AHKBgXP/sKMIDIVnHs8x0ib9AklSbZZcybtcI/E72iLaL76
# mtMp2pNbK3ekVFIE5CsD5IKfTkilDuPC2kyxizsWGE4r6eXEYzGPGO4LBIEDdRl6
# Jmdf3JMRUAd6bjaueA8NptF83EVAh/+TtPpyQdRLBS+63625z03hUGXKfv3m1VjI
# FnzvZ8V69v+0hvuCXjR2Y1Ms8gn1hWRNrPaGE/xahPNiBsae//15Ogmru112wRAk
# BFrj71MWTkGjYKvQZLPKUICgj/O/VxOUyEnykfJmfk4AhyRpdkMQMIIFMDCCBBig
# AwIBAgIQBAkYG1/Vu2Z1U0O1b5VQCDANBgkqhkiG9w0BAQsFADBlMQswCQYDVQQG
# EwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNl
# cnQuY29tMSQwIgYDVQQDExtEaWdpQ2VydCBBc3N1cmVkIElEIFJvb3QgQ0EwHhcN
# MTMxMDIyMTIwMDAwWhcNMjgxMDIyMTIwMDAwWjByMQswCQYDVQQGEwJVUzEVMBMG
# A1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3d3cuZGlnaWNlcnQuY29tMTEw
# LwYDVQQDEyhEaWdpQ2VydCBTSEEyIEFzc3VyZWQgSUQgQ29kZSBTaWduaW5nIENB
# MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA+NOzHH8OEa9ndwfTCzFJ
# Gc/Q+0WZsTrbRPV/5aid2zLXcep2nQUut4/6kkPApfmJ1DcZ17aq8JyGpdglrA55
# KDp+6dFn08b7KSfH03sjlOSRI5aQd4L5oYQjZhJUM1B0sSgmuyRpwsJS8hRniolF
# 1C2ho+mILCCVrhxKhwjfDPXiTWAYvqrEsq5wMWYzcT6scKKrzn/pfMuSoeU7MRzP
# 6vIK5Fe7SrXpdOYr/mzLfnQ5Ng2Q7+S1TqSp6moKq4TzrGdOtcT3jNEgJSPrCGQ+
# UpbB8g8S9MWOD8Gi6CxR93O8vYWxYoNzQYIH5DiLanMg0A9kczyen6Yzqf0Z3yWT
# 0QIDAQABo4IBzTCCAckwEgYDVR0TAQH/BAgwBgEB/wIBADAOBgNVHQ8BAf8EBAMC
# AYYwEwYDVR0lBAwwCgYIKwYBBQUHAwMweQYIKwYBBQUHAQEEbTBrMCQGCCsGAQUF
# BzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0dHA6
# Ly9jYWNlcnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5j
# cnQwgYEGA1UdHwR6MHgwOqA4oDaGNGh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9E
# aWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwOqA4oDaGNGh0dHA6Ly9jcmwzLmRp
# Z2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwTwYDVR0gBEgw
# RjA4BgpghkgBhv1sAAIEMCowKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3LmRpZ2lj
# ZXJ0LmNvbS9DUFMwCgYIYIZIAYb9bAMwHQYDVR0OBBYEFFrEuXsqCqOl6nEDwGD5
# LfZldQ5YMB8GA1UdIwQYMBaAFEXroq/0ksuCMS1Ri6enIZ3zbcgPMA0GCSqGSIb3
# DQEBCwUAA4IBAQA+7A1aJLPzItEVyCx8JSl2qB1dHC06GsTvMGHXfgtg/cM9D8Sv
# i/3vKt8gVTew4fbRknUPUbRupY5a4l4kgU4QpO4/cY5jDhNLrddfRHnzNhQGivec
# Rk5c/5CxGwcOkRX7uq+1UcKNJK4kxscnKqEpKBo6cSgCPC6Ro8AlEeKcFEehemho
# r5unXCBc2XGxDI+7qPjFEmifz0DLQESlE/DmZAwlCEIysjaKJAL+L3J+HNdJRZbo
# WR3p+nRka7LrZkPas7CM1ekN3fYBIM6ZMWM9CBoYs4GbT8aTEAb8B4H6i9r5gkn3
# Ym6hU/oSlBiFLpKR6mhsRDKyZqHnGKSaZFHvMIIFNDCCAxygAwIBAgIKYRyyigAA
# AAAAJjANBgkqhkiG9w0BAQUFADB/MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2Fz
# aGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENv
# cnBvcmF0aW9uMSkwJwYDVQQDEyBNaWNyb3NvZnQgQ29kZSBWZXJpZmljYXRpb24g
# Um9vdDAeFw0xMTA0MTUxOTQxMzdaFw0yMTA0MTUxOTUxMzdaMGUxCzAJBgNVBAYT
# AlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2Vy
# dC5jb20xJDAiBgNVBAMTG0RpZ2lDZXJ0IEFzc3VyZWQgSUQgUm9vdCBDQTCCASIw
# DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK0OFc7kQ4BcsYfzt2D5cRKlrtwm
# lIiq9M71IDkoWGAM+IDaqRWVMmE8tbEohIqK3J8KDIMXeo+QrIrneVNcMYQq9g+Y
# MjZ2zN7dPKii72r7IfJSYd+fINcf4rHZ/hhk0hJbX/lYGDW8R82hNvlrf9SwOD7B
# G8OMM9nYLxj+KA+zp4PWw25EwGE1lhb+WZyLdm3X8aJLDSv/C3LanmDQjpA1xnhV
# hyChz+VtCshJfDGYM2wi6YfQMlqiuhOCEe05F52ZOnKh5vqk2dUXMXWuhX0irj8B
# Rob2KHnIsdrkVxfEfhwOsLSSplazvbKX7aqn8LfFqD+VFtD/oZbrCF8Yd08CAwEA
# AaOByzCByDARBgNVHSAECjAIMAYGBFUdIAAwCwYDVR0PBAQDAgGGMA8GA1UdEwEB
# /wQFMAMBAf8wHQYDVR0OBBYEFEXroq/0ksuCMS1Ri6enIZ3zbcgPMB8GA1UdIwQY
# MBaAFGL7CiFbf0NuEdoJVFBr9dKWcfGeMFUGA1UdHwROMEwwSqBIoEaGRGh0dHA6
# Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3RzL01pY3Jvc29mdENv
# ZGVWZXJpZlJvb3QuY3JsMA0GCSqGSIb3DQEBBQUAA4ICAQBc9bItAs7tAbU1EtgT
# 96pAFMehXKCKVe1+VepqxFcXb9BHIkI2WO/FrGHF9ixSzmrmyA2F2rM0Qg6kAiUY
# JnK5Kk6lfksW8qDkDESc4k2a9HTw+SemaZAxwkRlQ0jHSGnQ/IQJ8oYUCsIploV/
# EeuHExdu0+xr/x1XirF7HqWgfOmiemjl+saxYdZyY/o3kWODVZn4HWFPDG+j97yx
# FSrMjYXjFBfvfklEP7AiwPCsvi/b4QyGsPRYXFoQqUvN80SKRlIIPgpiEOlFlQS3
# i41LB09QDbe75/uMonh4xsU7dmOyz+UhhFpm/OBMeYNOz6jucAWGWHzCnNc8o608
# fnZiXIfQ7XzVxVsUIfS+daJ10unhWtAgMHhBYk1rXm4bFxAkSthYh3XQFddiu/0Y
# VmWEJWGXf6rUnfTzXW2gMcLhngKsPpDDMn7oMpA0FtCLFM+VrM7ljFSiZbi/7Rhq
# Vwc+0+eaSi8IGgQcSYcaiuYbCKNl2BwxxQ2curNo3fRQdhYGdf7EA+fRPt/chi4Q
# An5mEpZTTnrzNlh5sSBC2JY/Nb4/jvKZl0P15AzhPGhyjI1J11pStXP7ejWUOmGw
# hILASIXBlzLTm3JfoNI0j37wRnzyjHKUxwew17WyMLgZZfCcgyewoKvQonJ+BQ+z
# rt25W5tCvMMmY0VrhvEdRkPtyDCCBq4wggSWoAMCAQICEAc2N7ckVHzYR6z9KGYq
# XlswDQYJKoZIhvcNAQELBQAwYjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lD
# ZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGln
# aUNlcnQgVHJ1c3RlZCBSb290IEc0MB4XDTIyMDMyMzAwMDAwMFoXDTM3MDMyMjIz
# NTk1OVowYzELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMTsw
# OQYDVQQDEzJEaWdpQ2VydCBUcnVzdGVkIEc0IFJTQTQwOTYgU0hBMjU2IFRpbWVT
# dGFtcGluZyBDQTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMaGNQZJ
# s8E9cklRVcclA8TykTepl1Gh1tKD0Z5Mom2gsMyD+Vr2EaFEFUJfpIjzaPp985yJ
# C3+dH54PMx9QEwsmc5Zt+FeoAn39Q7SE2hHxc7Gz7iuAhIoiGN/r2j3EF3+rGSs+
# QtxnjupRPfDWVtTnKC3r07G1decfBmWNlCnT2exp39mQh0YAe9tEQYncfGpXevA3
# eZ9drMvohGS0UvJ2R/dhgxndX7RUCyFobjchu0CsX7LeSn3O9TkSZ+8OpWNs5KbF
# Hc02DVzV5huowWR0QKfAcsW6Th+xtVhNef7Xj3OTrCw54qVI1vCwMROpVymWJy71
# h6aPTnYVVSZwmCZ/oBpHIEPjQ2OAe3VuJyWQmDo4EbP29p7mO1vsgd4iFNmCKseS
# v6De4z6ic/rnH1pslPJSlRErWHRAKKtzQ87fSqEcazjFKfPKqpZzQmiftkaznTqj
# 1QPgv/CiPMpC3BhIfxQ0z9JMq++bPf4OuGQq+nUoJEHtQr8FnGZJUlD0UfM2SU2L
# INIsVzV5K6jzRWC8I41Y99xh3pP+OcD5sjClTNfpmEpYPtMDiP6zj9NeS3YSUZPJ
# jAw7W4oiqMEmCPkUEBIDfV8ju2TjY+Cm4T72wnSyPx4JduyrXUZ14mCjWAkBKAAO
# hFTuzuldyF4wEr1GnrXTdrnSDmuZDNIztM2xAgMBAAGjggFdMIIBWTASBgNVHRMB
# Af8ECDAGAQH/AgEAMB0GA1UdDgQWBBS6FtltTYUvcyl2mi91jGogj57IbzAfBgNV
# HSMEGDAWgBTs1+OC0nFdZEzfLmc/57qYrhwPTzAOBgNVHQ8BAf8EBAMCAYYwEwYD
# VR0lBAwwCgYIKwYBBQUHAwgwdwYIKwYBBQUHAQEEazBpMCQGCCsGAQUFBzABhhho
# dHRwOi8vb2NzcC5kaWdpY2VydC5jb20wQQYIKwYBBQUHMAKGNWh0dHA6Ly9jYWNl
# cnRzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRSb290RzQuY3J0MEMGA1Ud
# HwQ8MDowOKA2oDSGMmh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRy
# dXN0ZWRSb290RzQuY3JsMCAGA1UdIAQZMBcwCAYGZ4EMAQQCMAsGCWCGSAGG/WwH
# ATANBgkqhkiG9w0BAQsFAAOCAgEAfVmOwJO2b5ipRCIBfmbW2CFC4bAYLhBNE88w
# U86/GPvHUF3iSyn7cIoNqilp/GnBzx0H6T5gyNgL5Vxb122H+oQgJTQxZ822EpZv
# xFBMYh0MCIKoFr2pVs8Vc40BIiXOlWk/R3f7cnQU1/+rT4osequFzUNf7WC2qk+R
# Zp4snuCKrOX9jLxkJodskr2dfNBwCnzvqLx1T7pa96kQsl3p/yhUifDVinF2ZdrM
# 8HKjI/rAJ4JErpknG6skHibBt94q6/aesXmZgaNWhqsKRcnfxI2g55j7+6adcq/E
# x8HBanHZxhOACcS2n82HhyS7T6NJuXdmkfFynOlLAlKnN36TU6w7HQhJD5TNOXrd
# /yVjmScsPT9rp/Fmw0HNT7ZAmyEhQNC3EyTN3B14OuSereU0cZLXJmvkOHOrpgFP
# vT87eK1MrfvElXvtCl8zOYdBeHo46Zzh3SP9HSjTx/no8Zhf+yvYfvJGnXUsHics
# JttvFXseGYs2uJPU5vIXmVnKcPA3v5gA3yAWTyf7YGcWoWa63VXAOimGsJigK+2V
# Qbc61RWYMbRiCQ8KvYHZE/6/pNHzV9m8BPqC3jLfBInwAM1dwvnQI38AC+R2AibZ
# 8GV2QqYphwlHK+Z/GqSFD/yYlvZVVCsfgPrA8g4r5db7qS9EFUrnEw4d2zc4GqEr
# 9u3WfPwwggbGMIIErqADAgECAhAKekqInsmZQpAGYzhNhpedMA0GCSqGSIb3DQEB
# CwUAMGMxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkG
# A1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBHNCBSU0E0MDk2IFNIQTI1NiBUaW1lU3Rh
# bXBpbmcgQ0EwHhcNMjIwMzI5MDAwMDAwWhcNMzMwMzE0MjM1OTU5WjBMMQswCQYD
# VQQGEwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xJDAiBgNVBAMTG0RpZ2lD
# ZXJ0IFRpbWVzdGFtcCAyMDIyIC0gMjCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCC
# AgoCggIBALkqliOmXLxf1knwFYIY9DPuzFxs4+AlLtIx5DxArvurxON4XX5cNur1
# JY1Do4HrOGP5PIhp3jzSMFENMQe6Rm7po0tI6IlBfw2y1vmE8Zg+C78KhBJxbKFi
# JgHTzsNs/aw7ftwqHKm9MMYW2Nq867Lxg9GfzQnFuUFqRUIjQVr4YNNlLD5+Xr2W
# p/D8sfT0KM9CeR87x5MHaGjlRDRSXw9Q3tRZLER0wDJHGVvimC6P0Mo//8ZnzzyT
# lU6E6XYYmJkRFMUrDKAz200kheiClOEvA+5/hQLJhuHVGBS3BEXz4Di9or16cZjs
# Fef9LuzSmwCKrB2NO4Bo/tBZmCbO4O2ufyguwp7gC0vICNEyu4P6IzzZ/9KMu/dD
# I9/nw1oFYn5wLOUrsj1j6siugSBrQ4nIfl+wGt0ZvZ90QQqvuY4J03ShL7BUdsGQ
# T5TshmH/2xEvkgMwzjC3iw9dRLNDHSNQzZHXL537/M2xwafEDsTvQD4ZOgLUMalp
# oEn5deGb6GjkagyP6+SxIXuGZ1h+fx/oK+QUshbWgaHK2jCQa+5vdcCwNiayCDv/
# vb5/bBMY38ZtpHlJrYt/YYcFaPfUcONCleieu5tLsuK2QT3nr6caKMmtYbCgQRgZ
# Tu1Hm2GV7T4LYVrqPnqYklHNP8lE54CLKUJy93my3YTqJ+7+fXprAgMBAAGjggGL
# MIIBhzAOBgNVHQ8BAf8EBAMCB4AwDAYDVR0TAQH/BAIwADAWBgNVHSUBAf8EDDAK
# BggrBgEFBQcDCDAgBgNVHSAEGTAXMAgGBmeBDAEEAjALBglghkgBhv1sBwEwHwYD
# VR0jBBgwFoAUuhbZbU2FL3MpdpovdYxqII+eyG8wHQYDVR0OBBYEFI1kt4kh/lZY
# RIRhp+pvHDaP3a8NMFoGA1UdHwRTMFEwT6BNoEuGSWh0dHA6Ly9jcmwzLmRpZ2lj
# ZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRHNFJTQTQwOTZTSEEyNTZUaW1lU3RhbXBp
# bmdDQS5jcmwwgZAGCCsGAQUFBwEBBIGDMIGAMCQGCCsGAQUFBzABhhhodHRwOi8v
# b2NzcC5kaWdpY2VydC5jb20wWAYIKwYBBQUHMAKGTGh0dHA6Ly9jYWNlcnRzLmRp
# Z2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRHNFJTQTQwOTZTSEEyNTZUaW1lU3Rh
# bXBpbmdDQS5jcnQwDQYJKoZIhvcNAQELBQADggIBAA0tI3Sm0fX46kuZPwHk9gzk
# rxad2bOMl4IpnENvAS2rOLVwEb+EGYs/XeWGT76TOt4qOVo5TtiEWaW8G5iq6Gzv
# 0UhpGThbz4k5HXBw2U7fIyJs1d/2WcuhwupMdsqh3KErlribVakaa33R9QIJT4LW
# pXOIxJiA3+5JlbezzMWn7g7h7x44ip/vEckxSli23zh8y/pc9+RTv24KfH7X3pjV
# KWWJD6KcwGX0ASJlx+pedKZbNZJQfPQXpodkTz5GiRZjIGvL8nvQNeNKcEiptucd
# YL0EIhUlcAZyqUQ7aUcR0+7px6A+TxC5MDbk86ppCaiLfmSiZZQR+24y8fW7OK3N
# wJMR1TJ4Sks3KkzzXNy2hcC7cDBVeNaY/lRtf3GpSBp43UZ3Lht6wDOK+EoojBKo
# c88t+dMj8p4Z4A2UKKDr2xpRoJWCjihrpM6ddt6pc6pIallDrl/q+A8GQp3fBmiW
# /iqgdFtjZt5rLLh4qk1wbfAs8QcVfjW05rUMopml1xVrNQ6F1uAszOAMJLh8Ugse
# mXzvyMjFjFhpr6s94c/MfRWuFL+Kcd/Kl7HYR+ocheBFThIcFClYzG/Tf8u+wQ5K
# byCcrtlzMlkI5y2SoRoR/jKYpl0rl+CL05zMbbUNrkdjOEcXW28T2moQbh9Jt0Rb
# tAgKh1pZBHYRoad3AhMcMYIFRDCCBUACAQEwgYYwcjELMAkGA1UEBhMCVVMxFTAT
# BgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEx
# MC8GA1UEAxMoRGlnaUNlcnQgU0hBMiBBc3N1cmVkIElEIENvZGUgU2lnbmluZyBD
# QQIQAybM8QJy2GqRSHGucYhV3TAJBgUrDgMCGgUAoHAwEAYKKwYBBAGCNwIBDDEC
# MAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwG
# CisGAQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFNWWFBJKa0PD31aL6V/D43TmEOgt
# MA0GCSqGSIb3DQEBAQUABIIBALlBD5pydzqKJ3j8U0TGbTfTsx8vKMm2eE5DgxFZ
# PdLWMNWlXj0aYgbO5KWmMDkxuj/68gsaHVGMIo6Js2l1FyMwobTXNrkbxrhKFhMK
# 8FUKSg6SvBvK0Yex0dK+wK/HEHDGg1IXOL0Vys0oNXddHwgkXmw++Rs72RSwZEar
# e9d0VmkUbvxaL+SwoHVH6C1hZhldf9wQippOLX26yoOkUHwMrs16yn12ukfr6aU2
# 9Vbs3QzgTdV+y9ysZ9EO8WzQd1sR26z2yoPQfF+BGomQ4A3MMmOP5H1QnDUz/A+6
# mUWylv7N/Fojss9ipRpF18X2gmiz2ykyP0uaWESAp4HO6E6hggMgMIIDHAYJKoZI
# hvcNAQkGMYIDDTCCAwkCAQEwdzBjMQswCQYDVQQGEwJVUzEXMBUGA1UEChMORGln
# aUNlcnQsIEluYy4xOzA5BgNVBAMTMkRpZ2lDZXJ0IFRydXN0ZWQgRzQgUlNBNDA5
# NiBTSEEyNTYgVGltZVN0YW1waW5nIENBAhAKekqInsmZQpAGYzhNhpedMA0GCWCG
# SAFlAwQCAQUAoGkwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0B
# CQUxDxcNMjIwNDI5MTA0MzQ0WjAvBgkqhkiG9w0BCQQxIgQgG6fQVhq2/QhPgt8d
# EPl1URzNVCCVJQ0TABNTM9qaMuEwDQYJKoZIhvcNAQEBBQAEggIAppYVDJHGZTID
# bouR4iaAnRn536K5ok6lFoCMjyvx8xWZT6yKTZQiDbOmzXcLNmLvEGffE60hsXEi
# L3ld3/5ouavVoxrNakIXzXIS7MjEIrJnbNs202P8RTP+QqixHsIYjbpabyADKH8g
# xXcRttBrA+0bF/8HPo3Jpyeue5PVF4L0Ep82tArbNuqz6w87ldlhPEDEq9J829L+
# 60a2dFUtKSvqSh1UCnYdGERHQ8KIp9kx3GAPkLc+xXwzl1CQJLnatsePZNnmX7nn
# KAaMve1/L3l+yy6u5nF2HkflwzTGucPuZoxsdPaJnu/LXzClFsYExgO2fARRU/Fx
# ZrSzjAC/bZrTJ41gGH6i/NgaysMbNKXH0UGRrz2m9zFbkWSFmDa1VCwT3qrZG/k5
# RyMh9pY1p+mZMKnlIZUDXkBn+lMeKJc2DjjVayJ1oDyJbLD7jhYFLRSpdP3q+mc/
# p5z0QyrLVwHBPfCgWSjHNzASY9MRrEpMx4lDzqhOc7rND/imvGiBuqz8kYdBeSgN
# JD5kP6mxcSTRZLr+HsMaUMu984Tf6gznsv/Z7xWIhJQ/LwdGCt3fTsnDLvuoS/sg
# 037CqszOcaC6QxaV3niQ7w/+FlGYexHtKG6SkXtFmHuQ0E0gpjnWJKjnqFqvgJ8L
# KYP+BaP1IhtTdjhK+qfHHEtqfwITpD0=
# SIG # End signature block
