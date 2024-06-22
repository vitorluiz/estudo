# Prompt de entrada para o nome de usuário e email
$userName = Read-Host "Digite seu nome para o Git"
$userEmail = Read-Host "Digite seu email para o Git"

# Configuração de nome e email
git config --global user.name $userName
git config --global user.email $userEmail
