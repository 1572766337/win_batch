@echo off
set var=111  
if defined var (echo var=%var%) else echo var尚未定义！
set var=
if defined var (echo var=%var%) else echo var尚未定义！
pause>nul