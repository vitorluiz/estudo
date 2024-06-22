# Prompt de entrada para o URL do repositório remoto
$remoteUrl = Read-Host "Digite o URL do repositório GitHub (HTTPS ou SSH)"

$branch = Read-Host "Nome da Branch que deseja enviar"

# prompt de comentário
$commit = Read-Host "Digite o comentário"

# Adição do arquivo ao repositório
git add .

# Commit inicial
git commit -m "$commit"

# Configuração do repositório remoto
git remote add origin $remoteUrl

# Envio das alterações para o repositório remoto
git push -u origin $branch

# Mensagem de confirmação
Write-Host "Repositório '$repoName' configurado e enviado para '$remoteUrl' com sucesso!"

# Retorna ao diretório inicial
Set-Location -Path $PWD
