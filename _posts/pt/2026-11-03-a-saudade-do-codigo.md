---
layout: post
title: "A Saudade do Código Artesanal: Reflexões de um DevOps na Era da IA"
permalink: /career/a-saudade-do-codigo-artesanal
date: 2026-11-03 08:00:00 -0300
image: ai-devops-struggle.png
tags: Career, DevOps, AI, Software Engineering
lang: pt
category: pt
ref: devops-ai-era
---

# A Saudade do Código Artesanal: Reflexões de um DevOps na Era da IA

Tenho usado bastante inteligência artificial no meu dia a dia. Escrevo scripts, reviso configurações, monto pipelines, gero manifests de Kubernetes, resolvo problemas que levariam algumas horas de pesquisa e, vez ou outra, até peço para ela explicar alguma coisa que eu deveria saber, mas naquele momento estou com preguiça de procurar na documentação.

Seria hipocrisia dizer que não gosto.

A produtividade que essas ferramentas proporcionam é absurda. Algumas tarefas que antes exigiam uma tarde inteira agora são resolvidas em minutos. E não estou falando apenas de completar uma linha de código ou sugerir o nome de uma variável. Estamos falando de gerar aplicações inteiras, estruturar projetos, escrever testes, criar documentação e até propor arquiteturas.

Mas, ultimamente, tenho sentido uma coisa curiosa: saudade.

Saudade de abrir um Pull Request e encontrar código escrito por alguém que realmente passou algum tempo pensando naquilo. Saudade de discutir uma solução, questionar uma abstração, implicar com uma função que faz coisas demais ou encontrar aquele pequeno detalhe que denunciava a experiência de quem escreveu.

Não estou dizendo que antigamente tudo era melhor. Quem trabalha com software há algum tempo sabe muito bem que sempre existiu código ruim, gambiarra, desenvolvedor que não documenta nada e aquele famoso comentário `// TODO: fix later` que sobrevive por cinco anos.

A diferença é que agora conseguimos produzir tudo isso em uma velocidade impressionante.

E talvez esse seja justamente o problema.

## Quando escrever código deixou de ser o trabalho

Durante muito tempo, desenvolver software envolvia uma quantidade considerável de trabalho manual.

Você precisava conhecer a linguagem, entender as bibliotecas, consultar documentação, testar possibilidades, quebrar a cabeça com erros e, eventualmente, chegar a uma solução. O processo era demorado, mas existia uma relação relativamente próxima entre o que o desenvolvedor pensava e aquilo que efetivamente aparecia no código.

Quando você abria um PR, havia uma boa chance de encontrar ali o resultado de horas de raciocínio, tentativas e decisões.

Dava para perceber algumas coisas.

Um desenvolvedor mais experiente geralmente deixava pistas de sua experiência na organização do código, na escolha das abstrações e na maneira como tratava determinados problemas. Um desenvolvedor mais novo talvez resolvesse tudo dentro de uma função enorme, colocasse um `if` para cada situação possível e repetisse algumas linhas que poderiam ser reaproveitadas.

Mas havia uma história ali.

Você conseguia acompanhar o raciocínio, entender as decisões e, principalmente, conversar sobre elas.

Hoje, uma parte considerável desse processo mudou.

O desenvolvedor descreve o problema, fornece algum contexto, pede uma implementação e começa a receber blocos de código que parecem ter saído de uma equipe inteira trabalhando durante alguns dias.

Em pouco tempo, temos uma API, seus modelos, seus testes, uma documentação inicial, Dockerfile, pipeline de CI e, se insistirmos um pouco, até um Helm Chart.

O curioso é que tudo parece razoavelmente organizado.

Os nomes fazem sentido. A estrutura de diretórios parece profissional. As funções estão separadas. Existem comentários, tratamento de exceções e testes.

É quase impossível não ficar impressionado.

Até você precisar manter aquilo.

## O novo gargalo não é escrever. É entender.

Existe uma mudança importante acontecendo no ciclo de desenvolvimento de software: a geração de código ficou muito mais barata.

E quando alguma coisa fica muito barata, geralmente começamos a consumir mais.

É exatamente o que está acontecendo.

Antes, produzir algumas centenas de linhas de código exigia um investimento considerável de tempo. Agora, podemos gerar milhares delas em uma tarde. O problema é que a capacidade humana de revisar, compreender e validar esse código não cresceu na mesma proporção.

Continuamos tendo as mesmas oito horas de trabalho, as mesmas reuniões, os mesmos incidentes em produção e, infelizmente, a mesma quantidade de café disponível na copa.

O resultado é um desequilíbrio.

O desenvolvedor consegue produzir muito mais código do que ele próprio consegue compreender em profundidade. E alguém precisa revisar aquilo.

É aí que começa a diversão.

Quem já precisou revisar um PR enorme, gerado parcialmente por IA, provavelmente conhece a sensação. Você abre a alteração esperando encontrar uma implementação relativamente simples e se depara com dezenas de arquivos modificados, novas dependências, abstrações que ninguém pediu e uma quantidade impressionante de código auxiliar.

Tudo parece correto.

O problema é justamente esse: parece correto.

Não é necessariamente um código ruim. Muitas vezes funciona muito bem. Mas existe uma diferença entre um código que funciona e uma solução cuja estrutura faz sentido dentro do sistema.

A IA é particularmente boa em produzir algo plausível. Ela consegue reproduzir padrões, combinar bibliotecas e seguir convenções com uma facilidade impressionante. Mas isso não significa que tenha compreendido todas as consequências daquela decisão dentro da arquitetura existente.

E, quando não existe uma intenção arquitetural bem definida, começamos a acumular soluções que fazem sentido isoladamente, mas que não necessariamente fazem sentido juntas.

Uma classe para resolver um problema simples. Uma interface para uma implementação que provavelmente nunca terá outra versão. Um serviço que chama outro serviço, que encapsula um terceiro serviço, que poderia simplesmente ser uma função.

A famosa abstração pela abstração.

E agora temos uma máquina capaz de produzir isso sem demonstrar qualquer cansaço.

## O Pull Request virou uma caixa de surpresas

Uma das coisas que mais gostava no processo de revisão de código era conseguir enxergar a personalidade técnica de quem estava por trás da implementação.

Não estou romantizando o código humano. Já encontrei cada atrocidade que seria capaz de fazer um compilador pedir demissão.

Mas existia uma dinâmica interessante.

Você encontrava uma solução, questionava uma decisão e recebia uma explicação. Às vezes o desenvolvedor defendia sua abordagem. Em outras, percebia que tinha exagerado e refatorava. Existia uma troca.

O PR era também um espaço de aprendizado.

Hoje, em alguns casos, a conversa mudou.

Você pergunta por que determinada lógica foi implementada daquela maneira e recebe como resposta algo parecido com:

"Foi a sugestão do Copilot."

E tudo bem usar o Copilot. O problema é quando essa resposta encerra a discussão.

Quem escreveu o código?

Tecnicamente, talvez tenha sido a ferramenta. Mas quem decidiu aceitar aquela implementação? Quem avaliou as alternativas? Quem entendeu as consequências?

O desenvolvedor continua sendo responsável pelo que entrega. A IA não participa do plantão, não recebe a ligação às três da manhã e não precisa explicar para o time por que uma alteração aparentemente inofensiva derrubou um serviço importante.

Existe uma diferença enorme entre usar uma ferramenta para implementar uma decisão e terceirizar a própria decisão para ela.

E tenho a impressão de que estamos confundindo cada vez mais essas duas coisas.

## O acordo silencioso: velocidade em troca de qualidade

Existe uma pressão enorme por produtividade na indústria de software.

Precisamos entregar mais funcionalidades, reduzir o Lead Time, aumentar a frequência de deploy e manter os indicadores bonitos nos dashboards. A cada trimestre surge uma nova métrica, uma nova metodologia ou uma nova ferramenta prometendo fazer o time entregar mais.

A IA entrou nesse cenário como uma espécie de combustível de foguete.

De repente, aquilo que antes levaria duas semanas pode ser apresentado em uma sprint. O backlog começa a andar, as funcionalidades aparecem e os números melhoram.

Mas será que estamos realmente entregando mais valor ou apenas aumentando a quantidade de código produzido?

Essa é uma pergunta que me incomoda.

Porque, enquanto comemoramos a velocidade de implementação, alguém continua precisando manter tudo aquilo.

E manutenção não costuma aparecer nas demonstrações de sexta-feira.

É muito fácil gerar uma implementação nova. Mais difícil é garantir que ela não introduza comportamentos inesperados, que respeite os contratos existentes, que não crie dependências desnecessárias e que continue fazendo sentido daqui a seis meses.

Tenho visto uma tendência perigosa: aceitar soluções simplesmente porque funcionam.

Não porque são boas, não porque são simples, não porque respeitam a arquitetura, mas porque passam nos testes e podem ser entregues dentro do prazo.

E aqui existe uma ironia interessante: estamos usando inteligência artificial para acelerar o desenvolvimento, mas podemos acabar gastando o tempo economizado tentando entender e corrigir aquilo que ela produziu.

O problema é que esse custo nem sempre aparece imediatamente.

Ele fica escondido no débito técnico, na complexidade crescente, nas pequenas exceções e nas decisões que ninguém consegue mais justificar.

SOLID, DRY, Clean Code e outros princípios não são mandamentos religiosos. Existem situações em que quebrar uma dessas regras é perfeitamente razoável.

Mas existe uma diferença entre escolher conscientemente uma abordagem mais simples e simplesmente aceitar qualquer implementação que a IA colocou na tela.

O perigo não é deixar de seguir um padrão. É deixar de pensar sobre ele.

## O DevOps recebe a conta

Talvez eu tenha uma visão um pouco enviesada sobre isso porque trabalho com DevOps e engenharia de plataforma.

Meu contato com o código muitas vezes acontece em um momento diferente daquele vivido por quem está desenvolvendo uma funcionalidade.

Eu preciso pensar em como aquilo será construído, testado, empacotado, distribuído, monitorado, escalado e, principalmente, como será recuperado quando alguma coisa der errado.

O código pode estar funcionando perfeitamente na máquina do desenvolvedor. Mas e depois?

Como ele se comporta quando recebe dez vezes mais requisições? O que acontece quando uma dependência fica indisponível? Como são tratados os timeouts? Existe uma estratégia de retry? Os logs ajudam a identificar um problema ou apenas registram que alguma coisa aconteceu?

O que acontece quando precisamos fazer rollback?

Essas perguntas continuam existindo, independentemente de quem escreveu o código.

E, na minha experiência, é justamente nesse momento que algumas implementações aparentemente perfeitas começam a mostrar suas fragilidades.

Um teste unitário pode passar e ainda assim não validar o comportamento que realmente importa. Um container pode subir sem erros e consumir recursos de maneira completamente desnecessária. Uma pipeline pode ficar verde enquanto a aplicação está cheia de decisões questionáveis.

Aliás, existe uma diferença enorme entre uma pipeline verde e um sistema saudável.

Automatizar a validação de código não significa automatizar o entendimento do código.

Podemos adicionar SonarQube, Trivy, análise estática, testes de integração, testes de contrato, scanners de dependências e uma dúzia de outros estágios ao pipeline. Tudo isso é importante.

Mas nenhuma dessas ferramentas substitui completamente alguém que entende o sistema e consegue avaliar se aquela implementação é uma boa ideia.

A automação ajuda a encontrar problemas conhecidos. A engenharia precisa continuar lidando com os problemas que ainda não sabemos procurar.

E, quanto mais código produzimos, maior fica a responsabilidade de construir mecanismos que nos permitam confiar nele.

## O novo debugging: conversar com quem escreveu o código

Existe outra situação que tenho achado particularmente curiosa.

Imagine um incidente em produção.

O serviço começa a apresentar erros, os logs não ajudam muito e alguém precisa investigar. O desenvolvedor responsável abre o repositório, localiza a implementação e começa a analisar o comportamento.

Até aí, nada diferente.

Só que, em vez de reconhecer a lógica que escreveu, ele começa a consultar o histórico, procurar a origem de uma função e tentar entender por que determinada decisão foi tomada.

Depois de alguns minutos, abre o chat com a IA e pergunta:

"Pode me explicar o que esse código faz?"

É uma cena quase cômica.

O desenvolvedor está pedindo para uma inteligência artificial explicar um código que ele mesmo colocou em produção alguns dias antes.

E não estou dizendo que isso nunca aconteceu com código escrito manualmente. Já encontrei funções que escrevi anos atrás e precisei de alguns minutos para lembrar o que estava pensando. Todos nós já passamos por isso.

A diferença é que agora podemos ter uma quantidade muito maior de código cuja implementação não foi realmente internalizada por quem a entregou.

Isso cria uma situação estranha: o desenvolvedor deixa de ser necessariamente a pessoa que conhece melhor a implementação.

Ele passa a ser alguém que sabe onde está o código, conhece o contexto geral e consegue pedir para uma ferramenta modificá-lo.

Isso pode funcionar muito bem até o momento em que a ferramenta não consegue resolver o problema.

Porque, no fim das contas, alguém precisa entender o sistema sem depender de uma conversa com o mesmo assistente que ajudou a construí-lo.

E essa pessoa deveria ser alguém da equipe.

## Estamos perdendo o prazer de construir?

Talvez essa seja a parte mais pessoal dessa reflexão.

Existe um prazer muito particular em resolver um problema difícil de programação.

Você passa algum tempo tentando entender o comportamento de uma biblioteca, encontra uma solução, refatora, remove algumas linhas desnecessárias e percebe que finalmente chegou a algo simples.

A solução parece inevitável depois que você a encontra.

É uma sensação muito boa.

Também existe prazer em ler um código bem escrito. Não necessariamente sofisticado, cheio de padrões ou com uma arquitetura digna de apresentação em conferência.

Às vezes é apenas uma função pequena, com uma responsabilidade clara, que faz exatamente o que deveria fazer.

Gosto dessa ideia de artesanato.

O software é um produto de engenharia, mas também é um trabalho intelectual e criativo. Existe cuidado na escolha de uma solução, na organização de um projeto e na preocupação com quem vai precisar manter aquilo depois.

Tenho medo de que, na busca por produtividade, a gente comece a tratar o desenvolvimento como uma atividade puramente operacional.

Descreva o problema. Gere o código. Execute os testes. Faça o merge. Próximo ticket.

É eficiente? Talvez.

Mas onde fica o aprendizado? Onde fica a curiosidade? Onde fica aquela vontade de entender como as coisas funcionam por baixo dos panos?

Não quero voltar a escrever tudo manualmente. Seria como abandonar uma furadeira porque gosto do barulho de martelar.

Mas também não quero chegar ao ponto em que minha principal habilidade seja saber formular perguntas para uma ferramenta.

Quero continuar sabendo construir.

## Não sou contra a IA. Sou contra deixar de pensar.

Seria muito fácil terminar este texto dizendo que precisamos voltar às origens, abandonar as ferramentas de IA e resgatar os velhos tempos da engenharia de software.

Mas não acredito nisso.

A IA está aqui para ficar. E, sinceramente, seria um desperdício enorme ignorar o potencial dessas ferramentas.

Eu mesmo utilizo IA diariamente. Ela me ajuda a pesquisar, experimentar tecnologias, escrever código, estruturar projetos e resolver problemas. Em muitas situações, funciona como um excelente parceiro de trabalho.

Mas existe uma condição importante: preciso continuar sendo capaz de avaliar o resultado.

Se peço para uma IA escrever um módulo Python, preciso entender o que aquele módulo faz. Se peço para gerar um Terraform, preciso saber quais recursos serão criados e quais permissões estão sendo concedidas. Se ela monta um pipeline de CI/CD, preciso entender o que acontece em cada estágio e quais são as consequências de uma falha.

Não basta que o código funcione na primeira execução.

Preciso saber o que acontece na segunda, na centésima e naquela execução que inevitavelmente vai falhar às três da manhã.

Talvez o papel do desenvolvedor esteja mudando. Em vez de escrever cada linha, ele passa a dedicar mais tempo à definição de problemas, à arquitetura, à revisão e à validação das soluções.

Isso não é necessariamente ruim.

Mas, para assumir esse papel, precisamos de mais conhecimento técnico, não menos.

Um desenvolvedor que não entende os fundamentos dificilmente conseguirá avaliar se a IA está propondo uma solução adequada. Ele pode até produzir muito código, mas estará cada vez mais dependente da ferramenta para corrigir os problemas que ela própria ajudou a criar.

A ferramenta deveria ampliar nossa capacidade de engenharia, não substituir nossa capacidade de raciocínio.

## O código ainda precisa de alguém que se importe

Talvez o maior problema dessa transformação não seja a quantidade de código gerado, nem a velocidade com que conseguimos desenvolver aplicações.

Talvez seja a possibilidade de começarmos a perder o senso de responsabilidade sobre aquilo que construímos.

Durante muito tempo, um dos nossos maiores desafios foi aprender a escrever software. Agora estamos diante de outro: aprender a não nos perdermos na quantidade de software que conseguimos produzir.

Continuo gostando de abrir um Pull Request e encontrar uma solução elegante. Continuo gostando de discutir arquitetura, questionar abstrações e encontrar maneiras de simplificar uma implementação.

E espero que isso não se torne uma atividade obsoleta.

Aos desenvolvedores que estão começando agora, deixo um conselho: não tenham pressa de terceirizar todo o processo de aprendizado. Aprendam a escrever código, entendam estruturas de dados, estudem redes, sistemas operacionais, bancos de dados e arquitetura. Experimentem, quebrem coisas e tentem descobrir por que quebraram.

Usem IA. Muito.

Mas não deixem que ela seja a única responsável por ensinar vocês a resolver problemas.

E aos mais experientes, talvez seja hora de repensar o que estamos cobrando das nossas equipes. Não podemos exigir apenas mais entregas, mais PRs e mais funcionalidades. Precisamos continuar valorizando a qualidade das decisões técnicas, a capacidade de explicar uma implementação e o cuidado com o software que ficará para quem vier depois.

Porque, no final, pouco importa se o código foi escrito por um desenvolvedor, pelo Copilot ou por alguma IA que ainda nem inventaram.

Quando o serviço cair, alguém vai precisar entender o que aconteceu.

E esse alguém não pode simplesmente responder que foi o prompt.