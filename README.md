# twp-robot-appium

Configuração e instalação do ambiente do projeto

1 - Baixar o Python: https://www.python.org/downloads/

2 - Instalar Python:
Selecionar “Add Python to PATH”
Clicar em “Customize installation”
Selecionar “Install for all users”

3 - Validar que o Python foi instalado, abrir o terminal do Windows e digitar “python –version”

4 - Validar que o pip foi instalado: abrir o terminal do Windows e digitar “pip –version”
Obs: O pip é o gerenciador de pacotes do Python.

5 - Baixar o Studio Code (Baixar a versão Stable) : https://code.visualstudio.com/download

6 - Instalar o Visual Studio Code:
	Selecionar “Create a desktop icon”
	Selecionar as duas opções “Add “Open with Code”

7 - Instalar as extensões no Visual Studio Code:
“Python” (Microsoft)
“Robot Framework” (Tomi Turtianinen)
“Robot Framework Language Server”
“Robot Code”
“Material Icon Theme” (Philipp Kief)

8 - Baixar JAVA JDK 8 (Windows x64):
https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html

9 - Instalar JAVA JDK 8.

10 - Validar que o JAVA JDK 8 foi instalado: abrir o terminal do Windows e digite: “java -version”

11 - Configuração da variável de ambiente do JAVA.
	Acessar “Configurações avançadas do sistema”
	Clicar em “Variáveis de ambientes”
	Clicar em “Novo” em Variáveis do sistema
		Digite “JAVA_HOME” no campo Nome da variável
		Copie e cole do caminho que o JAVA está em sua máquina
		“C:\Program Files\Java\jdk1.8.0_202” e cole no campo Valor da variável.
Clicar em “Path” nas Variáveis do sistema.
Adicionar a pasta BIN do JAVA “C:\Program Files\Java\jdk1.8.0_202\bin”

12 - Baixar Android Studio: https://developer.android.com/studio

13 - Instalar Android Studio
	Mantenha selecionado o “Android Virtual Device”

14 - Após instalar, abra o Android Studio e clique em “Configure” em seguida “AVD Manager”

15 - Configuração da variável de ambiente do Android
	Acessar “Configurações avançadas do sistema”
	Clicar em “Variáveis de ambientes”
	Clicar em “Novo” em Variáveis do sistema
		Digite “ANDROID_HOME” no campo Nome da variável
		Copie e cole do caminho que o Android está em sua máquina
		“C:\Users\mauri\AppData\Local\Android\Sdk” e cole no campo Valor da variável.
Clicar em “Path” nas Variáveis do sistema.
Adicionar a linha: “C:\Users\mauri\AppData\Local\Android\Sdk\platform-tools”

16 - Baixar Node.js: https://nodejs.org/en/download/
	Obs: baixar a versão Windows Installer (.msi)

17 - Instalar Node.js

18 - Abrir terminal do windows e digitar “node –version”
	digitar também “npm –version” npm é o gerenciador de pacotes do Node.js

19 - Instalar Appium, digitando o comando
...
npm install appuim -g
...
20 - Instalar o
...
npm install apium-doctor -g
...
21 - Realizar o diagnóstico no notebook para ver se ele está apto para criar sessões no Appium com o Android. Abrir o terminal e digitar
...
appium-doctor –android
...

22 - Baixar Appium Desktop: https://appium.io/downloads.html
	por exemplo: Appium-Server-GUI-windows-1.22.3-4.exe

23 - Instalar o Appium

24 - Clicar em “Start Server” e liberar acesso no firewall.

25 - Baixar o “Appium Inspector”: https://github.com/appium/appium-inspector/releases

26 - Criando um dispositivo Mobile Android
	Abra o Visual Studio
	Clique em “More Actions”
	Clique em “Virtual Devices Manager”
	Selecione “Pixel 2”
	Selecione a imagem do “Android PIE”

Configurando o Appium Inspector

Acessar a documentação: https://appium.io/docs/en/writing-running-appium/caps/
O que são os Capabilities do Appium? São recursos desejados. São conjuntos de chave e valor no formato json que são enviados através do framework de testes automatizados para o servidor do Appium quando iniciamos uma nova sessão de testes automatizados.

{
  "appium:automationName": "UiAutomator2",
  "platformName": "Android",
  "appium:deviceName": "Emulator",
  "appium:app": "C:\\qaninja\\twp\\app\\twp.apk",
  "appium:udid": "emulator-5554"
}

Acessar o terminal do windows e digitar “adb devices”
Se o emulador estiver umauthorized, você deve desligar o aparelho virtualizado e clicar para resetar padrão fábrica, clicando em “Wipe Data” dentro do Android Virtual Devices Manager.


Instalação do Robot Framework

Abrir o terminal do Windows e digitar
...
pip install robotframework
...

Instalação do Appium Library

Abrir o terminal do Windows e digitar
...
pip install --upgrade robotframework-appiumlibrary
...
