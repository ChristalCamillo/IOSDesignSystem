# mob-design-system-ios

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

### Cores

São ao todo 19 cores que podem ser utilizadas , white e black não possuem variações:
- white
- black
- amber
- blue
- citron
- gray
- green
- indigo
- lime
- mint
- olive
- orange
- pink
- purple
- red
- rose
- sand
- teal
- yellow

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
