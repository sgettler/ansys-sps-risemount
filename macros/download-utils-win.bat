@echo off
powershell (new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/sgettler/ansys-util/master/macros/_display.inp', '.\_display.inp')
