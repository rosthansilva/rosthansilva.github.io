---
title: "HowToDevOps #01 - Vamos aprender Git ?" 
date: 2023-03-10 18:33:00 +0800
categories: [howtodevops, git]
tags: [howtodevops]     # TAG names should always be lowercase
image:
  path: https://blog.knoldus.com/wp-content/uploads/2020/05/cover-first-steps-git.png
  alt: HowToGit
---

# Vamos aprender um pouco sobre git ?

No mundo do desenvolvimento de software, o controle de versão é fundamental para garantir uma colaboração eficiente e um histórico confiável de alterações de código. O Git se tornou a escolha mais popular para controle de versão devido à sua flexibilidade e poder. Neste artigo, exploraremos o Git, o GitFlow e o desenvolvimento em tronco, fornecendo insights valiosos para ajudá-lo a otimizar seu fluxo de trabalho de desenvolvimento.

## O que é o Git?

O Git é um sistema de controle de versão distribuído amplamente utilizado que permite que várias pessoas trabalhem simultaneamente em um projeto de software. Ele oferece uma maneira eficiente de acompanhar as alterações de código ao longo do tempo e possibilita a colaboração perfeita entre desenvolvedores.

## O que é o GitFlow?

![gitflow](https://codigomaromba.files.wordpress.com/2019/01/gitflow-1.png)

O GitFlow é um modelo de ramificação para o Git, desenvolvido por Vincent Driessen, que facilita o gerenciamento de projetos complexos com várias ramificações. O GitFlow define um conjunto de diretrizes claras para o fluxo de trabalho do Git, envolvendo duas ramificações principais: master e develop, além de ramificações de recursos, lançamentos e correções.

A substituição da branch "master" pela "main" é uma mudança significativa que ocorreu em muitos projetos de controle de versão, incluindo o Github e Gitlab. Essa transição foi motivada por uma necessidade de tornar a terminologia mais inclusiva e livre de conotações históricas indesejáveis.

O termo "master" era frequentemente associado a um contexto de escravidão e colonialismo, o que gerava desconforto para algumas pessoas na comunidade de desenvolvimento de software. Reconhecendo a importância da diversidade e inclusão, muitas organizações e comunidades optaram por substituir a nomenclatura "master" por "main".

Essa mudança é mais do que apenas uma atualização terminológica; ela representa um passo em direção a um ambiente mais inclusivo e consciente. Ao adotar a branch "main", projetos e equipes demonstram seu compromisso em criar espaços de trabalho que valorizam a diversidade e promovem uma linguagem neutra e respeitosa.

Portanto, a substituição da branch "master" pela "main" é uma evolução importante que reflete a constante busca por um setor de tecnologia mais inclusivo, atento e acolhedor para todos os envolvidos

### Benefícios do GitFlow:

 - Facilita a colaboração em projetos complexos com vários desenvolvedores;
 - Fornece um fluxo de trabalho estruturado e previsível;
 - Isola o desenvolvimento de novos recursos do trabalho de correções de bugs;
 - Permite lançamentos estáveis e confiáveis;
 - Promove uma abordagem incremental e iterativa para o desenvolvimento de software.

## Desenvolvimento em Tronco:

O desenvolvimento em tronco (ou "trunk-based development") é um modelo de desenvolvimento de software no qual todas as alterações são integradas diretamente na ramificação principal do projeto, geralmente a master ou main. Nesse modelo, as ramificações de recursos são mantidas curtas, evitando longas ramificações paralelas. É uma abordagem ágil que incentiva a integração contínua e o feedback rápido.