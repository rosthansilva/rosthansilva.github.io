---
layout: post
title:  "AWS Transit Gateway - Uma Relação de amor e ódio - Parte: 02"
permalink: /posts/aws/Aws-Transit-Gateway-Uma-Relacao-de-amor-e-odio2
date:   2024-04-24 18:05:55 +0300
image:  image_tg2.png
tags:   aws
---
# AWS Transit Gateway - Uma Relação de Amor e Ódio - Parte 2

![](/images/tgw_001.png)

Na parte 1 desta série, exploramos os benefícios e desafios do uso do AWS Transit Gateway. Agora, na parte 2, vamos nos aprofundar nas interações do Transit Gateway com VPN e Direct Connect em cenários de multi-account com on-premises.

## Integração com VPN

O AWS Transit Gateway oferece integração simplificada com VPNs, permitindo que você estenda sua rede local para a nuvem de forma segura e escalável. Você pode conectar seu Transit Gateway a uma VPN IPsec para estender sua rede local para a AWS.

Para configurar a integração com VPN, primeiro é necessário criar um túnel VPN entre sua rede local e o Transit Gateway. Em seguida, configure as rotas de rede necessárias para direcionar o tráfego entre sua rede local e a AWS. O Transit Gateway suporta até 50 túneis VPN por Gateway, o que permite escalabilidade e flexibilidade na conexão de múltiplas redes locais.

## Integração com Direct Connect

Para organizações que desejam uma conexão dedicada e de alta velocidade entre sua rede local e a AWS, o AWS Transit Gateway oferece integração com o Direct Connect. O Direct Connect permite estabelecer uma conexão privada entre sua rede local e a AWS, proporcionando maior largura de banda e menor latência em comparação com a conexão através da Internet pública.

Para configurar a integração com o Direct Connect, é necessário primeiro estabelecer uma conexão física com um dos locais do Direct Connect. Em seguida, configure as rotas de rede necessárias para direcionar o tráfego entre sua rede local e a AWS através do Transit Gateway. O Transit Gateway suporta até 3,000 conexões Direct Connect, permitindo a conexão de múltiplas redes locais de forma eficiente.

## Vamo de Case : Arquitetura de Multi Contas com Transit Gateway Compartilhado: Estudo de Caso

![](/images/image_tg2.png)

### Introdução

Em um ambiente de nuvem cada vez mais complexo, garantir a conectividade entre diferentes ambientes e a segurança dos dados é fundamental. Neste estudo de caso, vamos explorar uma arquitetura de multi contas na AWS, utilizando um Transit Gateway compartilhado para os ambientes de desenvolvimento (non prod) e produção (prod), com conexão com on-premises via Direct Connect e VPN como backup. A aplicação é executada em containers gerenciados pelo Amazon ECS.

### Descrição do Caso

Uma empresa de tecnologia está migrando suas aplicações para a AWS e deseja uma arquitetura que permita alta disponibilidade e escalabilidade, garantindo a segurança dos dados. Eles têm duas contas AWS, uma para o ambiente de desenvolvimento (non prod) e outra para produção (prod), e precisam de conectividade entre esses ambientes e a infraestrutura on-premises. Além disso, eles querem garantir que, em caso de falha do Direct Connect, a conectividade seja mantida através de uma VPN.

### Componentes da Arquitetura



1. **Transit Gateway Compartilhado**: Um único Transit Gateway será compartilhado entre as contas de desenvolvimento e produção. O Transit Gateway é um serviço que simplifica a conectividade entre redes VPC e on-premises.

2. **VPCs**: Cada ambiente (non prod e prod) terá sua própria VPC em cada região (us-east-1 e us-east-2) para garantir isolamento e segurança. As VPCs hospedarão os serviços ECS da aplicação.

3. **Direct Connect**: Será configurada uma conexão Direct Connect para estabelecer uma conexão dedicada e de alta velocidade entre a infraestrutura on-premises e a VPC de produção. Isso garantirá baixa latência e maior largura de banda para a transferência de dados sensíveis.

4. **VPN**: Uma VPN IPsec será configurada como backup para o Direct Connect. Mesmo sendo improvável que o Direct Connect falhe, a VPN garantirá a continuidade da conectividade em caso de falha.

5. **Amazon ECS**: O Amazon ECS será utilizado para gerenciar e orquestrar os containers da aplicação em ambos os ambientes. Cada ambiente terá seu próprio cluster ECS para facilitar o gerenciamento e a escalabilidade.

## Implementação Detalhada

1. **Configuração do Transit Gateway**: Crie um Transit Gateway na região us-east-1 e associe as VPCs do ambiente non prod e prod a ele. Configure as rotas de rede necessárias para direcionar o tráfego entre as VPCs e a conexão com on-premises.

2. **Configuração das VPCs**: Crie uma VPC para cada ambiente em cada região (us-east-1 e us-east-2). Configure sub-redes públicas e privadas, grupos de segurança e tabelas de rotas de acordo com as necessidades da aplicação.

3. **Configuração do Direct Connect**: Configure a conexão Direct Connect na região us-east-1 para estabelecer uma conexão dedicada e de alta velocidade entre a infraestrutura on-premises e a VPC de produção. Certifique-se de configurar as rotas de rede corretamente.

4. **Configuração da VPN**: Configure a VPN IPsec como backup para o Direct Connect na região us-east-1. Configure as rotas de rede necessárias para direcionar o tráfego da VPN para as VPCs de desenvolvimento e produção em caso de falha do Direct Connect.

5. **Configuração do Amazon ECS**: Crie clusters ECS separados para os ambientes non prod e prod em cada região. Implante os containers da aplicação nos clusters ECS e configure os balanceadores de carga e os grupos de autoescalonamento conforme necessário.

## Conclusão

Neste estudo de caso, exploramos uma arquitetura de multi contas na AWS, utilizando um Transit Gateway compartilhado para os ambientes de desenvolvimento e produção, com conexão com on-premises via Direct Connect e VPN como backup. Essa arquitetura oferece alta disponibilidade, escalabilidade e segurança para a aplicação, garantindo que a conectividade seja mantida mesmo em cenários de falha do Direct Connect.

