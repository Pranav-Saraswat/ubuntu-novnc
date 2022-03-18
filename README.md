
# NoVNC-for-Heroku
**Running a VNC server + NoVNC client on Heroku app**

### Features:
  - Running on Ubuntu 21.10 Docker Image
  - Google Chrome included
  - Lite Desktop xfce4
  - Easy to use
  - Use anydesk for faster and stable mirroring
  - Can be easily customized
  - Support Chinese Language and Pinyin input method, check Readme.txt in Desktop
  - Use keyboard Shift button to switch input method
  - Modified from megatron0000/heroku-vnc
  - Password: demo2020
  - Display resolution setting command:
  
      xrandr -s 1440x900
      
      xrandr -s 800x600
      
      xrandr -s 1024x768
      
      xrandr -s 1200x500
      
      xrandr -s 1360x620
      
      xrandr -s 1920x1080
      

### Installation

##### Requirement:
 - Docker
 - GIT
 - A heroku account
 - Stable Network
 - A blank application

##### Steps: 
Use private deploy

You will be asked for the application name. After you enter the application name, everything will be done automatically. If there is no error, you can access your app at: https://yourappname.herokapp.com

### How to use Anydesk?
  - Open your vnc in web browser - open Anydesk app from internet section in ubuntu
  - You will find your unique code there -> paste the code in any other anydesk client(android/pc) and it is set up (to prevent sleeping enable pinger for your app at     kaffeine
