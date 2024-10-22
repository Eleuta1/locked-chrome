# Exibir uma pop-up
Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show("Navegador Monitorado","Favor Nao utilizar o inspecionar")

# Exibir uma pop-up
Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show("Bem-vindo ao Chrome!","Mensagem")

#Caminho
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"

# Caminho do diretório do perfil (substitua pelo caminho real do seu perfil)
$userDataDir = "C:\Users\Dell\AppData\Local\Google\Chrome\User Data\Profile 1"  # Ajuste conforme necessário

#Inciar uma pagina especifica
$siteUrl = "http://panel.schoolguardian.app/colegiorenascenca" #School Guardian

#chrome install test
if (Test-Path $chromePath) {
    # Iniciar o Chrome com opções para desativar tradução e abrir o site
    Start-Process $chromePath 
        -ArgumentList "--user-data-dir=$userDataDir --disable-features=Translate,TranslateUI --disable-extensions --disable-popup-blocking --disable-translate --lang=pt, $siteUrl --incognito"
} 
	else {
    [System.Windows.MessageBox]::Show("Caminho do Chrome não encontrado.", "Erro")
}

