---
title: "#002 - Manipulando Variáveis em Go: Aprendendo os Fundamentos da Linguagem" 
date: 2023-06-28 18:33:00 +0800
categories: [desenvolvimento, golang]
tags: [golang]     # TAG names should always be lowercase
image:
  path: https://rayantonius.com/wp-content/uploads/2021/01/Golang-Sum-Int64.png
  alt: golang
---

# Usando variáveis

Com variáveis, podemos armazenar valores e posteriormente nos referir a eles por meio de referências nomeadas. O uso de variáveis tornará nosso código mais legível.
Introdução
Nesta lição, abordaremos:

 - O uso de variáveis em Go.
 - Como criá-las.
 - Atribuir diferentes tipos e valores.

## Declaração de variáveis

Em Go, existem várias maneiras de declarar variáveis:


### Definir um nome e tipo 
 
 Aqui, você declara uma variável com a palavra-chave `var`, atribui um nome e, por último, um tipo string. Abaixo está um exemplo:


```go
var nomeCompleto string
```

### Definir um grupo de variáveis 

É possível definir um grupo de variáveis. Ao usar essa forma de declaração, você só precisa digitar a palavra-chave `var` uma vez. O grupo é definido usando parênteses `()`:

```go
var (
    nome = "João"
    idade = 25
)
```

> Observe que cada variável está em uma nova linha.

### Definir e atribuir um valor

Dentro das funções, você pode usar o operador `:=`, que declara e atribui ao mesmo tempo. O código abaixo mostra a criação da variável `primeiroNome`. O tipo de dado é inferido como string:


```go
primeiroNome := "João"
```

### Atribuir variáveis

Para atribuir um novo valor a uma variável, ela precisa existir primeiro. Você usa o operador de atribuição `=`. Aqui está um exemplo:

```go
primeiroNome = "Maria"
```

## Tipos de dados

Existem muitos tipos de dados que você pode usar em Go. Eles são divididos em diferentes categorias:

### Tipos básicos 
  
  Nessa categoria, encontramos tipos como 
  - inteiros;
  - floats (números com casas decimais);
  - tipos booleanos (verdadeiro/falso); 
  - strings (para texto) e outros.

### Tipos compostos. 
Falaremos sobre tipos compostos em um artigo separado, mas eles são mais complexos. 
Exemplos de tipos compostos são : 
  - arrays;
  - structs;
  - interfaces.

## Declarar uma variável com um tipo

Existem duas maneiras de declarar uma variável e atribuir um tipo a ela:

#### Explicitamente 
  especificando seu tipo, por exemplo:


```go
var sobrenome string
```

#### Implicitamente

 atribuindo um valor e inferindo o tipo:

```go
sobrenome := "Silva"
```

No código acima, o tipo de dados é inferido com base no valor atribuído. 
Nesse caso, o tipo de dados se torna uma string com base no valor "Silva".


## Interpolação de strings

Às vezes, você deseja escrever coisas na tela e misturar diferentes tipos de dados ao fazer isso. 
Por exemplo, você pode querer escrever "Cliente: João tem R$20 em sua conta bancária".
Vamos supor que essas informações sejam representadas por essas duas variáveis:

```go
var (
    nomeCliente = "João"
    saldoConta = 20
)
```

Como você pode imprimir o texto acima? 
Para esse propósito, você pode usar a função `Printf()`, que usa formatação. A ideia é que um formato seja uma instrução de qual é o tipo de determinado valor. Ao fornecer essas informações para `Printf()`, ele é capaz de imprimir o tipo corretamente.
Veja como você pode imprimir a string de exemplo anterior:

```go
fmt.Printf("Cliente %s tem R$%d em sua conta bancária", nomeCliente, saldoConta)
```

Aqui, `%s` representa uma string e `%d` representa um número. Ao usar esses formatos como espaços reservados, as variáveis são inseridas corretamente e a saída será:

```
Cliente João tem R$20 em sua conta bancária
```

## Agora um Desafio 😈 

- Defina algumas variáveis e imprima-as

Desafio: Manipulando Variáveis em Go

Neste desafio, você terá a oportunidade de praticar a manipulação de variáveis em Go. Siga as instruções abaixo:

1. Crie um arquivo chamado `variaveis.go`.

2. Declare as seguintes variáveis:

- `idade` (int): Representa a sua idade atual.
- `nome` (string): Armazena o seu nome.
- `altura` (float64): Registra a sua altura em metros.

3. Atribua valores às variáveis declaradas. Você pode usar valores reais ou fictícios.

4. Utilizando a função `fmt.Println`, exiba na tela as informações seguindo o formato abaixo:

```
Nome: [nome]
Idade: [idade] anos
Altura: [altura] metros
```

Substitua `[nome]`, `[idade]` e `[altura]` pelos valores das variáveis correspondentes.

5. Execute o programa executando o seguinte comando no terminal:

```
go run variaveis.go
```

Você verá a saída com as informações personalizadas, como no exemplo abaixo:

```
Nome: João
Idade: 25 anos
Altura: 1.75 metros
```

# Desafio Extra: 

Experimente manipular as variáveis de diferentes formas. Por exemplo, você pode tentar realizar operações matemáticas com a idade e a altura, concatenar strings ou modificar os valores atribuídos às variáveis. Teste diferentes cenários para explorar o comportamento das variáveis em Go.

# Revisão e Estudo Adicional:

Para aprofundar seus conhecimentos sobre variáveis em Go, recomendo consultar a documentação oficial da linguagem e buscar por exemplos de manipulação de variáveis em tutoriais e guias disponíveis online. Além disso, pratique criando mais programas simples que envolvam a utilização de variáveis em diferentes contextos.