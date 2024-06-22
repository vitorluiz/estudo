
# Prompt de entrada para o nome do repositório
$repoName = Read-Host "Digite o nome do repositório"
$repoPath = "$PWD\$repoName"

# Criação do diretório do repositório
New-Item -ItemType Directory -Path $repoPath -Force

# Inicialização do repositório
Set-Location -Path $repoPath
git init

# Criação de um arquivo README.md
$readmeContent = "# $repoName"
Out-File -FilePath "$repoPath\README.md" -InputObject $readmeContent
