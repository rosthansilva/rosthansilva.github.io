---
title: "#001 - Criando seu primeiro programa em Go: Um guia para iniciantes" 
date: 2023-06-27 18:33:00 +0800
categories: [desenvolvimento, golang]
tags: [golang]     # TAG names should always be lowercase
image:
  path: https://yourbasic.org/golang/square-gopher.png
  alt: golang
---

# Criando seu primeiro programa em Go: Um guia para iniciantes
Bem-vindo ao mundo da programação em Go! Neste guia para iniciantes, você aprenderá como criar seu primeiro programa em Go e dará seus primeiros passos nessa linguagem poderosa. Vamos explorar os conceitos básicos e fornecer um exemplo simples para ajudá-lo a começar. Sem mais delongas, vamos mergulhar!


## História do Go
Antes de começarmos, é interessante conhecer um pouco sobre a história do Go. Criada em 2009 por Robert Griesemer, Rob Pike e Ken Thompson, essa linguagem surgiu como uma resposta às limitações de outras linguagens de programação. Sua popularidade cresceu rapidamente, e hoje conta com uma comunidade global de milhões de desenvolvedores, sendo amplamente utilizada por empresas renomadas, como Google, Pinterest e Uber.

## Por que usar Go
Antes de mergulharmos na criação do seu primeiro programa em Go, é importante entender as vantagens que essa linguagem oferece. Algumas delas são:

  - Tipagem estática: a tipagem estática do Go traz segurança e previsibilidade ao desenvolvimento de software.
  - Sistema de pacotes: o Go possui um sistema de pacotes poderoso, permitindo que você utilize pacotes existentes e crie os seus próprios.
  - Ferramentas de linha de comando: o Go vem com um conjunto de ferramentas de linha de comando que facilitam a execução, compilação e instalação de programas.
  - Biblioteca padrão abrangente: a biblioteca padrão do Go é rica em recursos e oferece suporte para uma ampla gama de funcionalidades.
  - Testes integrados: o Go possui uma biblioteca de testes integrada, tornando mais fácil escrever e executar testes para garantir a qualidade do código.
  - Concorrência: o Go possui recursos poderosos para lidar com a concorrência, permitindo que você crie programas eficientes e escaláveis.

## Para instalar o Go em seu sistema, siga as etapas abaixo:

  - Passo 1: Acesse o site oficial do Go
Visite o site oficial do Go em https://golang.org/. Lá, você encontrará os downloads disponíveis para diferentes sistemas operacionais.

  - Passo 2: Escolha a versão do Go
Na página de downloads, escolha a versão adequada para o seu sistema operacional. Certifique-se de selecionar a versão mais recente e estável.

  - Passo 3: Faça o download do instalador
Clique no link de download correspondente à sua plataforma (Windows, macOS ou Linux). O download do instalador será iniciado.

  - Passo 4: Execute o instalador
Após o download, execute o arquivo de instalação para iniciar o processo de instalação do Go em seu sistema.

  - Passo 5: Configure as opções de instalação
Durante o processo de instalação, você será solicitado a fornecer algumas opções de configuração. Certifique-se de selecionar o diretório de instalação adequado e aceitar as configurações padrão, a menos que você tenha requisitos específicos.

  - Passo 6: Verifique a instalação
Após a conclusão da instalação, abra um novo terminal ou prompt de comando e execute o seguinte comando para verificar se o Go foi instalado corretamente:

``` go
-- $ rosthan ~: go version
go version go1.20.5 linux/amd64
```

Se tudo estiver configurado corretamente, você verá a versão do Go instalada no seu sistema.

Parabéns! Agora você tem o Go instalado em seu sistema e está pronto para começar a programar em Go.

Lembre-se de definir as variáveis de ambiente GOPATH e PATH de acordo com as instruções do site oficial, para que você possa trabalhar com facilidade com seus projetos Go.

## Criando seu primeiro programa em Go

Agora que você tem uma visão geral do Go e suas vantagens, é hora de criar seu primeiro programa. Vamos começar com um exemplo simples que imprime "Olá" no console:

``` go
package main

import "fmt"

func main() {
    fmt.Println("Olá, mundo!")
}
```