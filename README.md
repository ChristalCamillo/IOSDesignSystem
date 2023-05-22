### Localiza Design System
Biblioteca para design system de aplicações mobile no contexto da Localiza

## REQUISITOS
    ios.deploymentTarget = "12.0"
    Swift = "5"
# INSTALAÇÃO
Se você ainda não utilizar cocoapods em seu projeto , execute o comando pod init na pasta raiz do mesmo.
Feito isso abra o arquivo podFile e adicione a seguinte linha:
```
pod 'DesignSystem', :git => 'localiza@vs-ssh.visualstudio.com:v3/localiza/Arquitetura%20-%20Bibliotecas%20Open%20Source%20Localiza/mob-design-system-ios', :tag => 'ios-design-system-0.0.2-beta'  
```
Também é possivel utilizar SPM via branch e link do git.
### UTILIZAÇÃO
No arquivo que gostaria de utilizar as cores importe  :

```
import DesignSystem
```
E depois no UIkit :
```
    UIColor.appColor(.amber10) 
```
ou simplesmente:
```
    .amber10
 ```
No caso do swiftUI
```
Color.uiColor(.amber0)
```


Caso vá utilizar visualmente com XIB ou storyboard , as cores devem aparecer em named colors .

## Como rodar o projeto mob-design-system-ios

Para rodar o projeto é necessário rodar o arquivo Makefile , que irá instalar coisas necessárias na sua máquina e gerar o xcodeproj. Para rodar o Makefile é muito fácil execute o seguinte código :
```
    make  install
```
caso queira saber todas as funções execute :
```
    make
```

Para gerar o xcodeproj e abrir o projeto execute :
```
    make generate_open
```