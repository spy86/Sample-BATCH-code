@echo off
net share IWServer=Y:\ /grant:Everyone,Full
net share default=Y:\default /grant:Everyone,Full