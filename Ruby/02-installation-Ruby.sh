#!/bin/bash



echo -e "\n\n\n ***********************************************  TERMINO  DA   INSTALACAO  RUBY *****************************************************"

rbenv -v

rbenv install -l

echo "Escolha a versao a ser instalada"
read versao
rbenv install $versao

## Instalacao global da Versao do Ruby
rbenv global $versao

echo "***********************************************************************************************************************************************"
