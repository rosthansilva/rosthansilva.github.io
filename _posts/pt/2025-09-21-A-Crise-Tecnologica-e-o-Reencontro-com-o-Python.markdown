---
layout: post 
title: "A Surpresa do Python: Como Reencontrei o Prazer de Fazer, Longe dos Buzzwords " 
permalink: /posts/dev/crise-ti-e-reencontro 
date: 2025-09-21 16:51:25 +0000 
image: tec.png 
tags: python, dev, open-source
lang: pt
---
Para testar se o seu **Syntax Highlighting (Rouge)** está funcionando corretamente no tema Zolan, especialmente com **Bazel** e **Python**, criei um post técnico "fake".

Salve este conteúdo como `_posts/2025-05-20-testando-syntax-highlighting.md`:

---

```markdown
---
layout: post
title: "Testing Code Blocks: Integrando Python e Bazel"
date: 2025-05-20 12:00:00 -0300
categories: [ferramentas, desenvolvimento]
tags: [python, bazel, tutorial]
description: "Um post de teste para validar o destaque de sintaxe em diferentes linguagens."
---

Este é um post de teste para garantir que a reestruturação do blog está exibindo os blocos de código corretamente. Como engenheiros, passamos muito tempo lendo código, então a legibilidade é prioridade número um!

## 1. Exemplo de Python (IA simples)

Vamos ver como o Jekyll renderiza um código Python com tipagem e comentários:

```python
import math

def calculate_ai_efficiency(layers: int, parameters: float) -> str:
    """
    Calcula uma métrica fictícia de eficiência para um modelo de ML.
    """
    score = math.log(parameters) / layers
    
    if score > 10:
        return f"Altamente eficiente: {score:.2f}"
    return "Necessita otimização"

# Testando a função
print(calculate_ai_efficiency(layers=50, parameters=1e9))

```

## 2. Exemplo de Bazel (Starlark)

O Bazel usa **Starlark**, que é visualmente similar ao Python. É importante testar se o seu tema consegue colorir as funções `py_binary` ou `genrule`.

```python
# Este é um arquivo BUILD.bazel
load("@rules_python//python:defs.bzl", "py_binary")

py_binary(
    name = "main_app",
    srcs = ["main_app.py"],
    deps = [
        "//src/ai:model_lib",
        "//src/utils:logger",
    ],
    visibility = ["//visibility:public"],
)

```

## 3. Comandos de Terminal (Bash)

Também precisamos garantir que os comandos de shell fiquem fáceis de copiar:

```bash
# Instalando dependências e rodando o build
bundle install
bazel build //...
bazel run //src:main_app -- --debug

```

> **Dica de Engenharia:** Se as cores não aparecerem, verifique se o arquivo `_config.yml` tem a linha `highlighter: rouge`.

---

```

---

### O que observar ao visualizar este post:

1.  **Cores Diferenciadas:** No bloco de Python, as palavras `import`, `def`, `if` e `return` devem ter cores diferentes das strings e dos números.
2.  **Starlark (Bazel):** Verifique se o `load` e os nomes dos argumentos (como `name`, `srcs`, `deps`) estão com destaque. No Jekyll/Rouge, usar ` ```python ` para arquivos Bazel costuma ser a melhor solução se o ` ```starlark ` não for reconhecido.
3.  **Fundo do Bloco:** O Zolan geralmente usa um fundo cinza escuro ou claro. Veja se o contraste está bom para leitura.
4.  **Categorias:** No topo (ou rodapé) do post, devem aparecer os links para as categorias **ferramentas** e **desenvolvimento** que configuramos anteriormente.

**Deseja que eu te mostre como adicionar um botão "Copiar" (Copy to Clipboard) nesses blocos de código usando um pouco de JavaScript?** Seria um diferencial bem legal para um blog técnico.

```