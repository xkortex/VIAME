@echo off

REM Setup VIAME Paths (no need to set if installed to registry or already set up)

SET VIAME_INSTALL=.\..\..

CALL "%VIAME_INSTALL%\setup_viame.bat"

REM Run pipeline

viame_train_detector.exe ^
  -i training_data_mouss ^
  -c "%VIAME_INSTALL%\configs\pipelines\train_mmdet_cascade.viame_csv.conf" ^
  --threshold 0.0

pause
