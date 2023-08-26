---
title: "#003 - Controle de Fluxo: Explorando as Estruturas de Decisão" 
date: 2023-06-29 18:33:00 +0800
categories: [desenvolvimento, golang]
tags: [golang]     # TAG names should always be lowercase
image:
  path: https://files.ably.io/ghost/prod/2021/02/guide-to-pubsub-in-golang-2.jpg
  alt: golang
---
# Controle de Fluxo: Explorando as Estruturas de Decisão

No campo da programação, o controle de fluxo desempenha um papel essencial no desenvolvimento de aplicativos. Ele nos permite controlar a direção que o programa segue, com base em condições específicas, e executar diferentes ações de acordo com essas condições. Neste capítulo, vamos explorar de forma detalhada as estruturas de decisão, como "if", "else if" e "else", que são ferramentas poderosas para criar lógica condicional em nossos programas.

## Introdução ao Controle de Fluxo

Antes de mergulharmos nas estruturas de decisão, vamos entender o conceito básico por trás do controle de fluxo. Quando falamos em "fluxo", estamos nos referindo à ordem em que as instruções de um programa são executadas. O controle de fluxo nos permite desviar dessa sequência linear e tomar diferentes caminhos com base em certas condições. Em outras palavras, podemos criar bifurcações no fluxo do programa, permitindo que ele tome decisões e execute ações específicas com base em diferentes cenários.

## Trabalhando com Lógica Condicional

É importante entender o conceito de lógica condicional. A lógica condicional envolve a avaliação de expressões que são verdadeiras ou falsas. Essas expressões são construídas usando operadores lógicos, como AND, OR e NOT, combinados com valores booleanos (verdadeiro ou falso). É a base para tomar decisões em nossos programas.

## A Estrutura "if": Tomando Decisões

A estrutura "if" é uma das construções mais fundamentais para o controle de fluxo. Ela nos permite avaliar uma condição e executar um bloco de código somente se a condição for verdadeira. Vejamos um exemplo:

```go
if temperatura > 30 {
    fmt.Println("Está muito quente lá fora!")
}
```

Nesse exemplo, o programa verifica se a temperatura é maior que 30. Se for verdade, ele executa o bloco de código dentro das chaves, que imprime a mensagem "Está muito quente lá fora!". Caso contrário, se a condição for falsa, o programa simplesmente ignora o bloco de código e continua sua execução normalmente.

## A Estrutura "else": Lidando com Alternativas

Às vezes, queremos executar um bloco de código alternativo se a condição do "if" for falsa. É aí que entra a estrutura "else". O "else" permite que você defina um bloco de código a ser executado quando a condição do "if" for avaliada como falsa. Vejamos um exemplo:

```go
if idade >= 18 {
    fmt.Println("Você é maior de idade.")
} else {
    fmt.Println("Você é menor de idade.")
}
```

Nesse caso, se a idade for maior ou igual a 18, o programa imprimirá "Você é maior de idade.". Caso contrário, se a condição for falsa (ou seja, se a idade for menor que 18), o programa imprimirá "Você é menor de idade.". Essa estrutura nos permite lidar com diferentes casos e personalizar a saída com base nas condições atendidas.

## A Estrutura "else if":

 Lidando com Múltiplas Condições

Em alguns casos, precisamos lidar com várias condições e executar diferentes blocos de código com base em cada uma delas. A estrutura "else if" nos permite fazer exatamente isso. Ela é usada quando queremos avaliar uma condição alternativa se a condição anterior for falsa. Vejamos um exemplo:

```go
if pontuacao >= 90 {
    fmt.Println("Você obteve uma pontuação excelente!")
} else if pontuacao >= 70 {
    fmt.Println("Bom trabalho! Sua pontuação é satisfatória.")
} else if pontuacao >= 50 {
    fmt.Println("Você passou, mas pode melhorar.")
} else {
    fmt.Println("Infelizmente, você não atingiu a pontuação mínima.")
}
```

Nesse exemplo, o programa avalia a pontuação e imprime uma mensagem correspondente com base em diferentes intervalos de pontuação. O "else if" nos permite verificar condições adicionais, caso a condição anterior seja falsa. Isso nos dá flexibilidade para lidar com casos mais complexos e fornecer saídas personalizadas com base nas condições atendidas.

## Desafio: Verificação de Primo 😈  

Agora que entendemos as estruturas de controle de fluxo, vamos propor um desafio para testar suas habilidades. O desafio é criar um programa que verifique se um número é primo ou não.

Um número primo é aquele que é divisível apenas por 1 e por ele mesmo, sem deixar resto. Por exemplo, 2, 3, 5, 7, 11 e 13 são números primos, enquanto 4, 6, 8 e 9 não são.

Seu programa deve solicitar ao usuário um número e, em seguida, verificar se ele é primo ou não. Em seguida, ele deve imprimir uma mensagem indicando o resultado. Aqui está um exemplo de como o programa poderia ser implementado:

```go
package main

import (
    "fmt"
    "math"
)

func main() {
    var num int
    fmt.Print("Digite um número inteiro: ")
    fmt.Scan(&num)

    isPrime := true

    if num < 2 {
        isPrime = false
    } else {
        for i := 2; i <= int(math.Sqrt(float64(num))); i++ {
            if num%i == 0 {
                isPrime = false
                break
            }
        }
    }

    if isPrime {
        fmt.Println(num, "é um número primo!")
    } else {
        fmt.Println(num, "não é um número primo.")
    }
}
```

Nesse programa, verificamos se o número digitado pelo usuário é menor que 2, pois os números menores que 2 não são primos. Em seguida, utilizamos um loop para verificar se o número é divisível por algum outro número além de 1 e ele mesmo. Se encontrarmos um divisor, definimos a variável `isPrime` como falsa e interrompemos o loop.

Ao final, imprimimos a mensagem apropriada com base no valor de `isPrime`. Experimente o programa e teste-o com diferentes números para ver se ele identifica corretamente os números primos.

Esse desafio é uma ótima maneira de praticar as estruturas de controle de fluxo e aplicá-las a um problema real. Divirta-se resolvendo-o e continue explorando

 outras possibilidades de uso dessas estruturas para criar programas mais sofisticados.