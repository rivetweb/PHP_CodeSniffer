@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/../squizlabs/php_codesniffer/scripts/phpcs
%userprofile%\bin\php\php "%BIN_TARGET%" %*
