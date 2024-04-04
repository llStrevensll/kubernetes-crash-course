$interval = 5  # Intervalo en segundos
#$command = "Invoke-RestMethod -Uri http://localhost/hello-world"  # Comando que deseas ejecutar
#$command = "Invoke-RestMethod -Uri http://localhost/currency-conversion/from/EUR/to/INR/quantity/10"
$command = "Invoke-RestMethod -Uri http://localhost/currency-exchange/from/USD/to/INR"
$logFile = "output.log"  # Archivo de registro donde se agregará la salida

while ($true) {
    Clear-Host  # Limpia la consola antes de cada ejecución del comando
    Invoke-Expression $command | Out-File -FilePath $logFile -Append  # Ejecuta el comando y agrega la salida al archivo de registro
    Get-Content $logFile  # Imprime el contenido del archivo de registro
    Start-Sleep -Seconds $interval  # Espera el intervalo especificado
}