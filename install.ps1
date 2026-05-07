# =====================================================
#  ULTIMATE RUNTIMES INSTALLER
#  Criado por: DEV - esieme
#  Instagram: @_esieme
#  GitHub: github.com/esieme
#  Versão: 3.0 - One-Line Install
# =====================================================

# Verificar admin
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "❌ Execute como Administrador!" -ForegroundColor Red
    Write-Host "Feche e abra o PowerShell como Administrator" -ForegroundColor Yellow
    pause
    exit 1
}

# Baixar e executar o instalador principal
$scriptUrl = "https://raw.githubusercontent.com/esieme/runtimes-installer/main/runtime-painel.ps1"
$tempScript = "$env:TEMP\runtime-painel.ps1"

Write-Host "📥 Baixando instalador..." -ForegroundColor Cyan
Invoke-WebRequest -Uri $scriptUrl -OutFile $tempScript -UseBasicParsing

Write-Host "🚀 Iniciando painel..." -ForegroundColor Green
& $tempScript

# Limpeza
Remove-Item $tempScript -Force -ErrorAction SilentlyContinue
