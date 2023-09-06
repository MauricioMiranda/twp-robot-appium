## Configuração e instalação do ambiente do projeto

# Python

1 - Baixar o Python: https://www.python.org/downloads/

2 - Instalar o Python:

Selecionar “Add Python to PATH”

Clicar em “Customize installation”

Selecionar “Install for all users”

3 - Validar que o Python foi instalado, abrir o terminal do Windows e digitar:
```
python –version
```
4 - Validar que o pip (gerenciador de pacotes do Python) foi instalado, abrir o terminal do Windows e digitar:
```
pip –version
```

# Visual Studio Code

1 - Baixar o Visual Studio Code (versão Stable): https://code.visualstudio.com/download

2 - Instalar o Visual Studio Code:

Selecionar “Create a desktop icon”

Selecionar as duas opções “Add “Open with Code”

3 - Instalar as extensões no Visual Studio Code:

“Python” (Microsoft)

“Robot Framework” (Tomi Turtianinen)

“Robot Framework Language Server”

“Robot Code”

“Material Icon Theme” (Philipp Kief)

# JAVA

1 - Baixar JAVA JDK 8 (Windows x64): https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html

2 - Instalar JAVA JDK 8.

3 - Validar que o JAVA JDK 8 foi instalado, abrir o terminal do Windows e digite:
```
java -version
```
4 - Configuração da variável de ambiente do JAVA.

Acessar “Configurações avançadas do sistema”

Clicar em “Variáveis de ambientes”

Clicar em “Novo” em Variáveis do sistema

Digite “JAVA_HOME” no campo Nome da variável

Copie e cole do caminho que o JAVA está em sua máquina

“C:\Program Files\Java\jdk1.8.0_202” e cole no campo Valor da variável.

Clicar em “Path” nas Variáveis do sistema.

Adicionar a pasta BIN do JAVA “C:\Program Files\Java\jdk1.8.0_202\bin”

# Android Studio

1 - Baixar Android Studio: https://developer.android.com/studio

2 - Instalar Android Studio

Mantenha selecionado o “Android Virtual Device”

3 - Após instalar, abra o Android Studio e clique em “Configure” em seguida “AVD Manager”

4 - Configuração da variável de ambiente do Android

Acessar “Configurações avançadas do sistema”

Clicar em “Variáveis de ambientes”

Clicar em “Novo” em Variáveis do sistema

Digite “ANDROID_HOME” no campo Nome da variável

Copie e cole do caminho que o Android está em sua máquina

“C:\Users\mauri\AppData\Local\Android\Sdk” e cole no campo Valor da variável.

Clicar em “Path” nas Variáveis do sistema.

Adicionar a linha: “C:\Users\mauri\AppData\Local\Android\Sdk\platform-tools”

# Node

1 - Baixar Node.js: https://nodejs.org/en/download/

Obs: baixar a versão Windows Installer (.msi)

2 - Instalar Node.js, abrir terminal do windows e digitar
```
node –version
```
Ainda no terminal do windows, digite a linha abaixo para validar que o gerenciador de pacotes do Node.js foi instalado
```
npm –version
```
4 - Instalar Appium, abrir terminal do windows e digitar
```
npm install appuim -g
```
5 - Instalar Appium Doctor
```
npm install appium-doctor -g
```
6 - Realizar o diagnóstico no notebook para ver se ele está apto para criar sessões no Appium com o Android. Abrir o terminal e digitar
```
appium-doctor –android
```
# Appium

1 - Baixar Appium Desktop: https://appium.io/downloads.html

Exemplo: Appium-Server-GUI-windows-1.22.3-4.exe

2 - Instalar o Appium

3 - Clicar em “Start Server” e liberar acesso no firewall.

4 - Baixar o “Appium Inspector”: https://github.com/appium/appium-inspector/releases

5 - Criando um dispositivo Mobile Android

Abra o Visual Studio Code

Clique em “More Actions”

Clique em “Virtual Devices Manager”

Selecione “Pixel 2”

Selecione a imagem do “Android PIE”

6 - Configurando o Appium Inspector

7 - Acessar a documentação: https://appium.io/docs/en/writing-running-appium/caps/

O que são os Capabilities do Appium? São recursos desejados. São conjuntos de chave e valor no formato json que são enviados através do framework de testes automatizados para o servidor do Appium quando iniciamos uma nova sessão de testes automatizados.
```
{
  "appium:automationName": "UiAutomator2",
  "platformName": "Android",
  "appium:deviceName": "Emulator",
  "appium:app": "C:\\qaninja\\twp\\app\\twp.apk",
  "appium:udid": "emulator-5554"
}
```
8 - Acessar o terminal do windows e digitar
```
adb devices
```
Se o emulador estiver umauthorized, você deve desligar o aparelho virtualizado e clicar para resetar padrão fábrica, clicando em “Wipe Data” dentro do Android Virtual Devices Manager.

# Robot Framework

1 - Instalar o Robot Framework, abrir o terminal do Windows e digitar:
```
pip install robotframework
```
2 - Confirmar a instalação do Robot Framework
```
robot --version
```
3 - Instalação do Appium Library, abrir o terminal do Windows e digitar:

```
pip install --upgrade robotframework-appiumlibrary
```
4 - Confirmar a instalação do Appium Library
```
appium --version
```
