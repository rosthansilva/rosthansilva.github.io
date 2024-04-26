---
layout: post
title:  "Protegendo e Segurando Aplicações com Serviços da AWS - Parte 1"
permalink: /posts/aws/Protegendo-Aplicações-com-Serviços-da-AWS-Parte-1
date:   2024-04-26
image:  2024-04-26-Protegendo-Aplicações-com-Serviços-da-AWS.jpg
tags:   aws
---


# Protegendo e Segurando Aplicações com Serviços da AWS - Parte 1

> Esse texto é um review de um requisito da certificação SAA-03 - Projetar cargas de trabalho e aplicações seguras

Na era digital, a segurança de aplicações é uma preocupação crucial para garantir a integridade e confiabilidade dos sistemas. A Amazon Web Services (AWS) oferece uma variedade de serviços que podem ser integrados para proteger suas aplicações contra ameaças cibernéticas. Vamos explorar como integrar serviços como AWS Shield, AWS WAF, IAM Identity Center e AWS Secrets Manager para reforçar a segurança das suas aplicações na AWS.

## AWS Shield


![](https://d1.awsstatic.com/AWS%20Shield%402x.1d111b296bfd0dd864664b682217bc7610453808.png)


O AWS Shield é um serviço de proteção contra ataques DDoS (Distributed Denial of Service) que ajuda a manter suas aplicações disponíveis mesmo durante ataques cibernéticos. O AWS Shield oferece duas camadas de proteção: o AWS Shield Standard, que é gratuito e oferece proteção automática contra os ataques DDoS mais comuns.
O AWS Shield Advanced, que oferece proteção mais avançada, incluindo mitigação de ataques DDoS mais sofisticados e suporte 24x7.

Para integrar o AWS Shield à sua aplicação, basta ativá-lo na console da AWS e configurar as opções de proteção desejadas. O AWS Shield trabalha em conjunto com outros serviços da AWS, como o AWS WAF e o aws Firewall Manager, para fornecer uma camada adicional de segurança.

## AWS WAF

![](https://maturitymodel.security.aws.dev/pt/01.14_waf_PT-BR_01.png)

O AWS WAF (Web Application Firewall) é um firewall de aplicação web que ajuda a proteger suas aplicações web contra ataques comuns, como injeção de SQL, cross-site scripting (XSS) e outros tipos de ataques cibernéticos. O AWS WAF permite criar regras de segurança personalizadas para filtrar e bloquear o tráfego malicioso antes que ele alcance suas aplicações.

Para integrar o AWS WAF à sua aplicação, primeiro é necessário criar uma Web ACL (Web Access Control List) na console da AWS e configurar as regras de segurança desejadas. Em seguida, associe a Web ACL ao seu CloudFront distribution ou Application Load Balancer para que o AWS WAF possa filtrar o tráfego antes que ele atinja suas aplicações.

## IAM Identity Center

![](https://d2908q01vomqb2.cloudfront.net/b6692ea5df920cad691c20319a6fffd7a4a766b8/2022/11/23/Screen-Shot-2022-11-22-at-10.17.39-PM.png)

O IAM (Identity and Access Management) Identity Center é um serviço da AWS que permite gerenciar de forma centralizada identidades e acessos de usuários e recursos na sua conta da AWS. Com o IAM Identity Center, é possível configurar políticas de acesso granulares para controlar quem pode acessar quais recursos da AWS, garantindo a segurança das suas aplicações.

Para integrar o IAM Identity Center à sua aplicação, primeiro é necessário criar e gerenciar usuários, grupos e papéis na console da AWS. Em seguida, configure políticas de acesso que definem quais ações os usuários podem realizar em quais recursos. Por exemplo, você pode criar uma política que permita a um usuário ler e gravar em um bucket do Amazon S3, mas não deletar arquivos.

O AWS Identity and Access Management (IAM) oferece uma série de recursos poderosos para ajudar a gerenciar com segurança o acesso aos serviços e recursos da AWS. Aqui estão alguns dos recursos-chave do IAM:

1. **Gerenciamento de Identidades**: O IAM permite criar e gerenciar identidades para usuários e recursos da AWS, como contas de usuário, grupos e papéis.

2. **Políticas de Acesso Granulares**: Com o IAM, é possível definir políticas de acesso granulares que especificam quais ações um usuário ou serviço pode realizar em recursos da AWS.

3. **Autenticação Multifatorial (MFA)**: O IAM oferece suporte à autenticação multifatorial para adicionar uma camada adicional de segurança ao acesso à sua conta da AWS.

4. **Federated Access**: O IAM permite configurar o acesso federado para permitir que usuários fora da sua organização acessem recursos da AWS usando suas próprias credenciais.

5. **Auditoria e Registro**: O IAM fornece registros detalhados de todas as ações realizadas pelos usuários e serviços da AWS, permitindo auditorias e conformidade regulatória.

6. **Integração com Outros Serviços**: O IAM pode ser integrado a outros serviços da AWS, como AWS Secrets Manager e AWS SSO, para uma gestão centralizada e segura de identidades e acessos.

7. **Controle de Acesso Baseado em Função**: O IAM permite atribuir funções aos usuários e recursos da AWS, definindo assim as permissões de acesso com base nas responsabilidades de cada função.

8. **Gestão de Chaves de Criptografia**: O IAM oferece a capacidade de gerar e gerenciar chaves de criptografia para proteger dados em trânsito e em repouso na AWS.


## AWS Secrets Manager

![](https://d1.awsstatic.com/diagrams/Secrets-HIW.e84b6533ffb6bd688dad66cfca36622c2fa7c984.png)


O AWS Secrets Manager é um serviço de gerenciamento de segredos que ajuda a proteger informações sensíveis, como senhas, chaves de API e tokens, armazenando-os de forma segura e criptografada na AWS. O AWS Secrets Manager permite rotear automaticamente segredos para suas aplicações de forma segura, eliminando a necessidade de armazenar senhas e chaves de forma não segura em código ou configurações.

Para integrar o AWS Secrets Manager à sua aplicação, primeiro é necessário criar um segredo na console da AWS e armazenar as informações sensíveis, como senhas ou chaves de API. Em seguida, configure sua aplicação para recuperar esses segredos usando a API do AWS Secrets Manager. Por exemplo, você pode recuperar a senha de um banco de dados MySQL armazenado no AWS Secrets Manager e usá-la para se conectar ao banco de dados de forma segura.

Com a integração desses serviços, você pode reforçar a segurança das suas aplicações na AWS, protegendo-as contra ameaças cibernéticas e garantindo a integridade dos seus dados sensíveis. Na próxima parte deste artigo, vamos concluir nossa exploração com algumas práticas recomendadas para proteger suas aplicações na AWS. Não perca!

---

# Unindo os pontos

Agora você deve estar pensando "como eu junto isso tudo ?". Relaxa, vamo cai de cabeça em um estudod e caso rapido pra deixar tudo bem claro.
## Estudo de Caso: Aplicação de E-commerce com Segurança Avançada na AWS

Imagine uma aplicação de e-commerce em rápido crescimento que precisa garantir a segurança e integridade dos dados dos clientes. Para atender a essas necessidades, a empresa decide utilizar os recursos de segurança da AWS, incluindo AWS Shield, AWS WAF, IAM Identity Center e AWS Secrets Manager.

### Arquitetura da Aplicação

A aplicação de e-commerce é hospedada em instâncias EC2 e usa um banco de dados RDS para armazenar informações dos clientes. A aplicação também utiliza o CloudFront como CDN para acelerar a entrega de conteúdo estático e o Application Load Balancer (ALB) para distribuir o tráfego entre as instâncias EC2.

### Implementação da Segurança

1. **AWS Shield**: O AWS Shield é configurado para proteger a aplicação contra ataques DDoS. O AWS Shield Standard está em uso para proteção automática contra os ataques mais comuns, enquanto o AWS Shield Advanced é configurado para oferecer proteção adicional contra ataques mais sofisticados.

2. **AWS WAF**: O AWS WAF é usado para proteger a aplicação contra ataques web comuns, como injeção de SQL e XSS. São criadas regras personalizadas no AWS WAF para filtrar e bloquear o tráfego malicioso antes que ele alcance a aplicação.

3. **IAM Identity Center**: O IAM Identity Center é usado para gerenciar identidades e acessos dos usuários da aplicação. São criados usuários, grupos e papéis no IAM, e são definidas políticas de acesso granulares para controlar quem pode acessar quais recursos da AWS.

4. **AWS Secrets Manager**: O AWS Secrets Manager é utilizado para gerenciar as chaves de criptografia e outras informações sensíveis, como chaves de API e tokens. As informações sensíveis são armazenadas de forma segura e são acessadas pela aplicação usando o AWS Secrets Manager.

### Benefícios Obtidos

- **Segurança Avançada**: A aplicação está protegida contra ataques DDoS e ataques web comuns, garantindo a segurança e integridade dos dados dos clientes.
- **Controle de Acesso Granular**: O IAM Identity Center permite controlar quem pode acessar quais recursos da AWS, garantindo que apenas usuários autorizados tenham acesso aos dados sensíveis.
- **Gestão Centralizada de Segredos**: O AWS Secrets Manager simplifica a gestão de chaves de criptografia e outras informações sensíveis, garantindo que elas sejam armazenadas e acessadas de forma segura.

Em resumo, a utilização dos recursos de segurança da AWS, como AWS Shield, AWS WAF, IAM Identity Center e AWS Secrets Manager, permitiu que a aplicação de e-commerce garantisse a segurança e integridade dos dados dos clientes, garantindo uma experiência segura e confiável para os usuários.

---