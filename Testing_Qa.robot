*** Settings ***
Library    SeleniumLibrary
*** Variables ***
 
** Test Cases ***

Open Browser

            Open Browser   https://platformrc.wyscout.com/app/   chrome
			Maximize Browser Window
            Sleep   5s
            
			
Invalid User Or Password
			
			##InvalidUserNameOrPassword
			
			Input Text     xpath = /html/body/div[1]/div/div[2]/div[2]/div/div[2]/div/div/div[1]/div[2]/div[1]/div[2]/input  sushmita@gmail.com
            Input Text     xpath = /html/body/div[1]/div/div[2]/div[2]/div/div[2]/div/div/div[1]/div[2]/div[2]/div[2]/input  pw_IndiaTest!  
			##Sleep   5s
            
			Click Button    id = login_button
            Sleep   5s
			capture page screenshot
			
			Page Should Contain 	Invalid username or password
            Click Element     xpath=/html/body/div[9]/div[2]/div[3]/div
			Sleep   5s
			
			Input Text     xpath = /html/body/div[1]/div/div[2]/div[2]/div/div[2]/div/div/div[1]/div[2]/div[1]/div[2]/input  8484984654654684

            Input Text     xpath = /html/body/div[1]/div/div[2]/div[2]/div/div[2]/div/div/div[1]/div[2]/div[2]/div[2]/input  pw_IndiaTest!
			
			Click Button    id = login_button
			Sleep   5s
			
			##InvalidUserNameOrPassword
			Page Should Contain 	Invalid username or password
            Click Element     xpath=/html/body/div[9]/div[2]/div[3]/div
			Sleep   5s
			
Valid User

			Input Text     xpath = /html/body/div[1]/div/div[2]/div[2]/div/div[2]/div/div/div[1]/div[2]/div[1]/div[2]/input  sushmitas55555@gmail.com
            Input Text     xpath = /html/body/div[1]/div/div[2]/div[2]/div/div[2]/div/div/div[1]/div[2]/div[2]/div[2]/input  pw_IndiaTest!
			capture page screenshot
			Click Button    id = login_button
			Sleep   5s
			
				

DarkMode 
			##dark
            Click Element     xpath=/html/body/div[1]/div/div[1]/div[5]/div[1]/div[1]
            Sleep   5s
			capture page screenshot
			
			
Profile

			Click Element   xpath=/html/body/div[1]/div/div[1]/div[5]/div[2]/div/a
			Sleep   5s
			capture page screenshot
            Sleep   5s
			
LogOut
			Sleep   5s
			Click Element   xpath=/html/body/div[12]/div[1]/div/div/div/div[3]/div[2]/a
			capture page screenshot				