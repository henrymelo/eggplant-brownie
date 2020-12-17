## Conhecendo o Git 
### 1. O Git é um sistema de controle de versão de arquivos
Amplamente usado para versionar código de modo colaborativo, utilizando branchs/ramos de produção de código, utilizando merge e impedindo sobreposição de código.
- 1.1) Histórico do teu trabalho
- 1.2) Desenvolvimento descentralizado
- 1.3) Para evitar digitar a senha do git toda vez na mesma sessao, execute o comando no terminal:
  - ssh-add -K ~/.ssh/id_rsa
### 2)  Merges pull request
- Em uma pull request, você propõe que as alterações feitas em um branch head sejam mescladas em um branch base, a menos que o branch head esteja em conflito com o branch base.
### 3) Sync com branch base
   - git pull origin branch_base
### 4) Conflitos que normalmente acontecem em projetos colaborativos
   - both modified:   Pods/Pods.xcodeproj/project.pbxproj
   - both modified:   app.xcodeproj/project.pbxproj
#### 4.1) Abortar um merge e buscando uma estratégia pra merge com menor impacto
   - git merge --abort
#### 4.2) Adotando uma estratégia pra merge via terminal
    - Identificando marcações de conflitos(<<<<<  ======= >>>>>>)
#### 4.3) Adotando uma estratégia via VSCode
     - Analisando melhor estratégia
#### 4.4) Conflitos de pod install, verifique as versões do pod local
  - pod --version
  - gem uninstall cocoapods
  - gem uninstall cocoapods-core 
  - gem install cocoapods -v 1.9.3
  - gem install cocoapods-core -v 1.9.3
#### 4.5) Conflitos de inserção de arquivos, checando a quantidade de conflitos via terminal.
   - grep -Rinc === app.xcodeproj/project.pbxproj
### 5) Nova branch com base na atual
   - git checkout -b MinhaOutraBranchPraTreino
### 6) Retornar para um commit específico
### 7) Analise de log e diff
   - log README.md
   - log -p README.md
   - diff README.md
### 8) Git stash
    - git stash
    - git stash apply
## Exercícos, simulando conflitos:
   - a) No decorrer do curso alura, será necessário fazer o fork deste projeto https://github.com/henrymelo/eggplant-brownie
   - b) Pelo teu git, faça um clone numa pasta local do teu projeto eggplant-brownie.
   - c) A pastir da branch develop, faca duas branchs novas, executando o comando no terminal:
        - git checkout develop
        - git checkout -b pasta_um
        - git pull
        - git push
        - git checkout -b pasta_dois
        - git pull
        - git push
   - c) Altere o arquivo README.md na pasta_um e execute os comandos no terminal:
      - git checkout pasta_um
      - add .
      - commit -m "commit pasta um"
      - pull
      - push
   - d) Altere o arquivo README.md na pasta_dois e execute os comandos no terminal:
      - git checkout pasta_dois
      - add .
      - commit -m "commit pasta dois"
      - pull
      - push
   - e) Provavelmente você terá conflitos neste momento, se for syncar as duas branchs, execute o comando no terminal:
      - git checkout pasta_um
      - git pull origin pasta_dois
      - git push
   - f) Se não houve conflitos, tente alterar a mesma linha nas duas branchs. 
 

