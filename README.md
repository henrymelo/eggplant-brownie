## Conhecendo o Git 

##### Instalação

→ Site oficial: https://git-scm.com/
\
→ Instalação: https://git-scm.com/downloads

##### Jogo para treinar ramificação do Git

https://learngitbranching.js.org/

 Git possui uma arquitetura distribuída, isso significa que todo desenvolvedor tem uma cópia local do projeto em que está trabalhando, e que ele não precisa de acesso a internet para criar seu histórico de alterações.
 	
##### Setting Up GIT
	
$ git config --global user.name "Seu Nome"
\
$ git config --global user.email root@localhost.com
\
$ git config --global color.ui true

 ##### Repositórios:
 
* Repositório:
  * diretório onde o Git armazena arquivos
  * geralmente, cada projeto fica em um repositório
* Repositório Local:
  * diretório na máquina local contendo os arquivos
* Repositório Remoto:
  * diretório em máquina remota contendo os arquivos
      	
## Obtendo Ajuda

$ git help algum_comando → mostra a documentação do
comando requerido

Git trabalha em uma arquitetura em Branch (ou ramificações). Cada novo commit, ou seja, alteração do código, cria um novo ponto na ramificação

<img src="///image.slidesharecdn.com/git-intro-091215075529-phpapp01/95/git-and-github-13-728.jpg?cb=1260938801U" width="600" height="400">

1. Clone do projeto:
O primeiro passo para obter o código-fonte do projeto é cloná-lo em nossas máquinas, para que seus arquivos fiquem disponíveis localmente.

2. Criação da Branch:
Ao criar uma Branch, estamos criando uma nova ramificação, totalmente independente, para podermos alterar os arquivos do projeto sem interferir nos originais. Esse processo é considerado uma boa prática quando se está trabalhando em nova funcionalidade.

3. Commits:
Conforme vão sendo criados e alterados os arquivos, elas vão sendo divididas em commits. É importante que a descrição de cada commit seja objetiva, pois ela vai ficar salva no histórico das alterações.

4. Hora do Push:
Uma vez que a funcionalidade está totalmente finalizada, devemos enviar nossa Branch, com todas as alterações, de volta ao repositório remoto. Assim, ela ficará disponível para os demais contribuidores do projeto poderem ver e alterar.

5. Merge para juntar tudo:
Para mesclar as modificações de sua Branch com os arquivos originais do projeto da Branch principal ou máster, você pode utilizar o comando Merge. Após isso, é necessário dar um commit e um push, para enviar a ramificação máster mesclada ao repositório remoto e deixar tudo disponível para os demais contribuidores. Existe também o Pull Request, que geralmente tem relação com a contribuição em projetos open source. Basicamente, ele ocorre quando se pede para o dono do repositório que suas modificações sejam incluídas nele.
Quais os comandos mais utilizados no Git?
Existem alguns comandos que costumam ser mais utilizados por quem usa diariamente esse sistema de versionamento. Conheça alguns deles:
Initialize: Serve para inicializar um repositório vazio ou reinicializar um já existente;

<img src="///encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6PdXBu0vqEwoEmKiWzR-9XLqA0ZzxnpzF2A&usqp=CAU" width="600" height="400">

### Comandos principais do Git

* Clone: Utilizado para clonar o repositório;

* Add: Serve para adicionar um arquivo para o State Area, para que seja vinculado a um próximo commit;

* Commit: Comando que serve para mover os arquivos do State Area para o repositório local;

* Pull: Utilizado para buscar e trazer mudanças do repositório remoto para o repositório local, ou seja, unir os conteúdos dos arquivos alterados. Em alguns casos, pode ser necessária uma intervenção humana para realizar essa união;

* Push: Utilizado para enviar o arquivo do repositório local para o remoto;

* Merge: Serve para mesclar commits e Branchs na Branch atual;

* Log: Permite ver o histórico de commits ou um específico.

---
### 1. O Git é um sistema de controle de versão de arquivos

Amplamente usado para versionar código de modo colaborativo, utilizando branchs/ramos de produção de código, utilizando merge e impedindo sobreposição de código.
- 1.1) Histórico do teu trabalho	
- 1.2) Desenvolvimento descentralizado
- 1.3) Para evitar digitar a senha do git toda vez na mesma sessao, execute o comando no terminal:

      ssh-add -K ~/.ssh/id_rsa
      
### 2)  Merges pull request
- Em uma pull request, você propõe que as alterações feitas em um branch head sejam mescladas em um branch base, a menos que o branch head esteja em conflito com o branch base.
### 3) Sync com branch base
    git pull origin branch_base
### 4) Conflitos que normalmente acontecem em projetos colaborativos
    both modified:   Pods/Pods.xcodeproj/project.pbxproj
    both modified:   app.xcodeproj/project.pbxproj
#### 4.1) Abortar um merge e buscando uma estratégia pra merge com menor impacto
    git merge --abort
#### 4.2) Adotando uma estratégia pra merge via terminal
   - Identificando marcações de conflitos(<<<<<  ======= >>>>>>)
#### 4.3) Adotando uma estratégia via VSCode
   - Analisando melhor estratégia
#### 4.4) Conflitos de pod install, verifique as versões do pod local
    pod --version
    gem uninstall cocoapods
    gem uninstall cocoapods-core 
    gem install cocoapods -v 1.9.3
    gem install cocoapods-core -v 1.9.3
#### 4.5) Conflitos de inserção de arquivos, checando a quantidade de conflitos via terminal.
    grep -Rinc === app.xcodeproj/project.pbxproj
### 5) Nova branch com base na atual
    git checkout -b nova_branch_pra_treinar
    git push --set-upstream origin nova_branch_pra_treinar
### 6) Retornar para um commit específico
    git checkout hash_do_commit_especifico
### 7) Analise com status, log e diff
    git status
    git log README.md
    git log -p README.md
    git diff README.md
### 8) Git stash
    git stash
    git stash apply
## Exercícos, simulando conflitos:
   - a) No decorrer do curso alura, será necessário fazer o fork deste projeto https://github.com/henrymelo/eggplant-brownie
   - b) Pelo teu git, faça um clone numa pasta local do teu projeto eggplant-brownie.
   - c) A pastir da branch develop, faca duas branchs novas, executando os comandos no terminal:
   
    git checkout develop
    git checkout -b pasta_um
    git pull
    git push
    git push --set-upstream origin pasta_um
    git checkout -b pasta_dois
    git pull
    git push
    git push --set-upstream origin pasta_dois
   - d) Altere o arquivo README.md na pasta_um e execute os comandos no terminal:
   
    git checkout pasta_um
    add .
    commit -m "commit pasta um"
    pull
    push
   - e) Altere o arquivo README.md na pasta_dois e execute os comandos no terminal:
   
    git checkout pasta_dois
    add .
    commit -m "commit pasta dois"
    pull
    push
   - f) Provavelmente você terá conflitos neste momento, se for syncar as duas branchs, execute o comando no terminal:
   
    git checkout pasta_um
    git pull origin pasta_dois
    git push
   - g) Se não houve conflitos, tente alterar a mesma linha nas duas branchs. 
   - h) Supondo que você alterou arquivos corretos em uma branch incorreta... tranquilo... utilize o stash para transportar os arquivos para outra branch. caso você já tenha feito commit será necessário outra estratégia, voltando um commit, ou desfazendo o commit.
   
    git checkout pasta_um
    git status
   ##### Realize algumas alterações no arquivo #####
    git status
    git diff
    git stash
    git status
    git checkout pasta_dois
    git stash apply
    git status
    git diff
   ##### Verifique que seus arquivos vieram para a pasta_dois #####
      

