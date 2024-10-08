@echo off

:: Start LLaMA server
start cmd.exe /c "ollama serve"

:: Wait for 1 second to let the server start
ping localhost -n 2 >nul

:: Activate Conda environment
@REM TODO ADD VARIABLE USER NAME
call C:\Users\%USERNAME%\miniconda3\Scripts\activate.bat C:\Users\%USERNAME%\miniconda3\envs\raglocal

set OLLAMA_NUM_PARALLEL=2
set OLLAMA_MAX_LOADED_MODELS=2
set OLLAMA_FLASH_ATTENTION=1
@REM set PYTHONPATH=%PYTHONPATH%;D:\CodingGit_StorageHDD\python-p2p-network

:: Set PostgreSQL password
set PGPASSWORD=admin

:: Run Python script
start cmd.exe /k "python Local_Sledge_Embedding.py"
