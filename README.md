# Desafio Neon

Desafio Neon separados em duas partes: 
Automação Backend
Automação Mobile

## 🚀 Começando

 Abaixo as instruções necessárias para instalação das dependências e execução do projeto.

### 📋 Pré-requisitos

Lista de instalação dos pré-requisitos necessários para conseguir rodar o projeto.

Versões utilizadas e recomendadas para rodar as automações.

```
Ruby 2.6.8 com devkit
Java 8 JDK
Node.js 16.13.1
NPM 8.1.2
Appium 1.22.2
Android Studio Bumblebee 2021.1.1 Patch 2 (Já vem incluso SDK)
Genymotion 3.2.1 (Desktop)
VirtualBox 6.1.32
Visual Studio Code 1.65.2
Console Emulator (CMDER)

```

### 🔧 Instalação

Exemplos passo-a-passo que informam o que deve ser executado para conseguir rodar o projeto.

Instalação do SDK e configurações de variáveis de ambiente

```
Após baixar o Android Studio, instale no caminho C:\Users\nome_do_usuario\AppData\Local
substituindo nome_do_usuario pelo nome correto do user.

Crie as variaveis de ambiente, adicionando nas variáveis do sistema:

Exemplo:
Nome da variável: ANDROID_HOME
Valor da variável: C:\Users\nome_do_usuario\AppData\Local\Android\Sdk

Crie agora a variável do sistema para o Java:

Exemplo:
Nome da variável: JAVA_HOME
Valor da variável: C:\Program Files\Java\jdk1.8.0_202  (dependedo a versão pode mudar o final)

Ainda em variáveis do sistema procure por "Path" clique em editar e adicione as seguintes variáveis:

Ao total são 5 variáveis que serão adicionadas, como abaixo:

%ANDROID_HOME%\platform-tools
%ANDROID_HOME%\tools
%ANDROID_HOME%\tools\bin
%ANDROID_HOME%\tools\lib
%JAVA_HOME%\bin

Faça a instalação do Genymotion no site oficial

...

Após baixar e concluir a instalação para acessar o Genymotion utilize o usuario e senha abaixo que foram criados especialmente para o projeto.

usuario: samuel.desafioneon@gmail.com
senha: desafioneon2022

Após acessar adicione o dispositivo: Google Pixel 2 Android 9.0 API 28

Depois na tela principal do Genymotion acesse a opção no menu superior esquerdo Genymotion -> Settings -> ADB
selecione a opção "Use custom" e passe o caminho aonde esta o SDK como vimos anteriormente:

C:\Users\nome_do_usuario\AppData\Local\Android\Sdk


Instalação do Appium

...

Acesse o Console Emulator, e rode o comando:

npm install -g appium

e em seguida após a instalação rode:

npm install -g appium-doctor

após a instação rode o comando abaixo para verificar se todas as dependências estão instaladas:

appium-doctor --android


Instalando as gems do Ruby

...

Para instalar rode o comando: 

bundle install

após a intalação temos um passo muito importante para funcionar no windows, desinstalar o eventmachine e reinstalar novamente.

Rode o comando: 

gem unistall eventmachine

desinstale todas as versões possíveis, após feito isso, vamos instalar novamente com o comando abaixo:

gem install eventmachine --platform ruby

## ⚙️ Executando os testes

Para conseguir executar os teste siga os passos abaixo:

Abra o VirtualBox, em seguida abra o Genymotion e no dispositivo instalado clique em "Start" para iniciar.

Após o Genymotion deixar "On" o android e carregar completamente, volte ao Console Emulator e rode o comando:

adb devices

Ele irá mostrar o ip junto com a porta do nosso android que o Genymotion startou, copie o ip junto com a porta.
Dentro do projeto pelo Visual Studio Code acesse a pasta Desafio Mobile/features/support/caps/appium.txt e acesse o arquivo.

Se necessário: 
** Substitua o valor do campo udid pelo ip e porta do passo anterior **

"De modo que seja o mesmo ip e porta do android que acabamos de iniciar, o Genymotion mostra na barra superior quando o android esta ligado"


Feito isso vamos ligar o servidor do Appium volte ao Console Emulator e rode o comando:

...

appium

Com isso ele vai subir o servidor do appium para conseguirmos executar os testes.


Executando a Automação Mobile

...

Rode o comando abaixo com a tag para rodar apenas os cenários que foram automatizados.

cucumber -t @cadastro

Com isso ele executará os 2 cenários que foram automatizados


Executando a Automação Backend

Para executar os 2 cenários que foram automatizados, rode separadamente um de cada vez:

rspec features\specs\consultar_funcionarios_spec.rb

e depois

rspec features\specs\cadastrar_funcionarios_spec.rb

A cada execução o Rspec gera um relatório que fica disponível na raiz do projeto.

*** OBS: Por se tratar de uma API pública pode ter instabilidades nas requisições, gerando assim exception na execução.

Sendo necessário na maiorias das vezes executar mais de uma vez para obter exito na requisição. ***