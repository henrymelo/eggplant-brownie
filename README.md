# Conhecendo o Git 
1. O GIT é amplamente usado para versionar código de modo colaborativo, utilizando branchs/ramos de produção de código, utilizando merge e impedindo sobreposição de código.
- 1.1) Histórico do teu trabalho
- 1.2) Desenvolvimento descentralizado
2)  Merges pull request
- Em uma pull request, você propõe que as alterações feitas em um branch head sejam mescladas em um branch base, a menos que o branch head esteja em conflito com o branch base.
3) Sync com branch base
   - git pull origin branch_base
4) Conflitos que normalmente acontecem em projetos colaborativos
   - both modified:   Pods/Pods.xcodeproj/project.pbxproj
   - both modified:   app.xcodeproj/project.pbxproj
4.1) Abortar um merge e buscando uma estratégia pra merge com menor impacto
   - git merge --abort
4.2) Adotando uma estratégia pra merge via terminal
    - Identificando marcações de conflitos(<<<<<  ======= >>>>>>)
4.3) Adotando uma estratégia via VSCode
     - Analisando melhor estratégia
4.4) Conflitos de pod install, verifique as versões do pod local
  - pod --version
  - gem uninstall cocoapods
  - gem uninstall cocoapods-core 
  - gem install cocoapods -v 1.9.3
  - gem install cocoapods-core -v 1.9.3
4.5) Conflitos de inserção de arquivos, checando a quantidade de conflitos via terminal.
   - grep -Rinc === app.xcodeproj/project.pbxproj
5) Nova branch com base na atual
   - git checkout -b MinhaOutraBranchPraTreino
6) Retornar para um commit específico
7) Analise de log e diff
   - log README.md
   - log -p README.md
   - diff README.md
8) Exercícos, simulando conflitos:
   - a) No decorrer do curso alura, será necessário fazer o fork deste projeto https://github.com/henrymelo/eggplant-brownie
   - b) Pelo teu git, faça um clone numa pasta local do teu projeto eggplant-brownie.
   - a) Tenha duas pastas com o mesmo projeto git.
   - b) Atualize o conteudo do mesmo arquivo nas duas pastas, com informações diferentes, na mesma linha, por exemplo, no arquivo README.md 
   - c) Na primeira pasta execute os comandos no terminal:
      - add .
      - commit -m "commit pasta um"
      - pull
      - push
   - d) Na segunda pasta execute os comandos no terminal:
      - add .
      - commit -m "commit pasta dois"
      - pull
      - push
   - e) Provavelmente você terá conflitos neste momento.   
 

