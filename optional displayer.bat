@echo off
:read_messages
timeout /t 1 >nul
cls
type .\chat.py
title Text reader//Project\\ Your signed in as: %username%
goto read_messages
