
curl -OL https://github.com/wimg/PHPCompatibility/archive/8.1.0.zip
rm -R PHPCompatibility-8.1.0
unzip 8.1.0.zip
rm 8.1.0.zip

rm -R CodeSniffer/Standards/PHPCompatibility
rm CodeSniffer/Standards/PHPCSAliases.php

mv PHPCompatibility-8.1.0/PHPCompatibility/ CodeSniffer/Standards/PHPCompatibility/
mv PHPCompatibility-8.1.0/PHPCSAliases.php CodeSniffer/Standards/PHPCSAliases.php

rm -R PHPCompatibility-8.1.0

#phpcs --config-set installed_paths ~/bin/PHPCompatibility