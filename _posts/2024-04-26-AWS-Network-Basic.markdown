---
layout: post
title:  "AWS Network Basic - Aprendendo sobre VPCs e Subnets"
permalink: /posts/aws/AWS-Network-Basic
date: 2024-04-26
image: vpc/AWS-VPC.png
tags: aws
---


## Introdução à Amazon VPC


Você sabia que a Amazon VPC (Virtual Private Cloud) é uma rede isolada que você cria na AWS, semelhante a uma rede tradicional em um data center? Ao criar uma Amazon VPC, você precisa escolher três fatores principais:

![](https://img1.daumcdn.net/thumb/R300x0/?fname=https://blog.kakaocdn.net/dn/H8M8X/btqU0y3GJoY/8Yb5Wq9cTkIntuKKW31J00/img.png)

1. **Nome da VPC**: O nome da sua VPC para identificação.
2. **Região da VPC**: A região da AWS onde a VPC estará localizada. Uma VPC abrange todas as Zonas de Disponibilidade (AZs) dentro da região selecionada.
3. **Intervalo de IPs para a VPC em notação CIDR**: Isso determina o tamanho da sua rede. Cada VPC pode ter até cinco CIDRs: um principal e quatro secundários para IPv4. Cada um desses intervalos pode ter entre /28 (em notação CIDR) e /16 de tamanho.

Com essas informações, a AWS provisionará uma rede e endereços IP para essa rede.

### Criação de Subredes

![](/images/vpc/vpc_subnets.png)

Depois de criar sua VPC, você precisa criar sub-redes dentro da rede. Pense nas sub-redes como redes menores dentro da sua rede base, ou redes locais virtuais (VLANs) em uma rede tradicional local. Em uma rede local, o caso de uso típico para sub-redes é isolar ou otimizar o tráfego de rede. Na AWS, as sub-redes são usadas para fornecer alta disponibilidade e opções de conectividade para seus recursos. Use uma sub-rede pública para recursos que precisam estar conectados à internet e uma sub-rede privada para recursos que não precisam estar conectados à internet.

Você pode iniciar recursos da AWS, como instâncias EC2, em uma sub-rede específica dentro da sua VPC. Ao criar uma sub-rede, você deve especificar o seguinte:

- **VPC**: A VPC na qual você deseja que sua sub-rede viva - neste caso: VPC (10.0.0.0/16)
- **Zona de Disponibilidade**: A Zona de Disponibilidade na qual você deseja que sua sub-rede viva - neste caso: Zona de Disponibilidade 1
- **Bloco CIDR IPv4 para sua sub-rede**, que deve ser um subconjunto do bloco CIDR da VPC - neste caso: 10.0.0.0/24

Ao iniciar uma instância EC2, você a inicia dentro de uma sub-rede, que estará localizada dentro da Zona de Disponibilidade que você escolher.

### Alta Disponibilidade com uma VPC


![](/images/vpc/vpc_azs.png)

Ao criar suas sub-redes, mantenha a alta disponibilidade em mente. Para manter a redundância e a tolerância a falhas, crie pelo menos duas sub-redes configuradas em duas Zonas de Disponibilidade.

Como você aprendeu anteriormente, lembre-se de que "tudo falha o tempo todo". Com a rede de exemplo, se uma das Zonas de Disponibilidade falhar, você ainda terá seus recursos disponíveis em outra Zona de Disponibilidade como backup.

---

### IPs Reservados

![](/images/vpc/ips.png)

Para configurar adequadamente sua VPC, a AWS reserva cinco endereços IP em cada sub-rede. Esses endereços IP são usados para roteamento, Sistema de Nome de Domínio (DNS) e gerenciamento de rede.

Por exemplo, considere uma VPC com o intervalo de IP 10.0.0.0/22. A VPC inclui um total de 1.024 endereços IP. Isso é então dividido em quatro sub-redes de tamanho igual, cada uma com um intervalo de /24 com 256 endereços IP. Dentro de cada um desses intervalos de IP, existem apenas 251 endereços IP que podem ser usados porque a AWS reserva cinco.

A AWS reserva cinco endereços IP em cada sub-rede que não podem ser atribuídos a um recurso.

Esses cinco endereços IP reservados podem impactar a forma como você projeta sua rede. Um ponto de partida comum para aqueles que são novos na nuvem é criar uma VPC com um intervalo de IP /16 e criar sub-redes com um intervalo de IP /24. Isso fornece uma grande quantidade de endereços IP para trabalhar em ambos os níveis, VPC e sub-rede.

---

### Gateways



**Gateway de Internet**: Para ativar a conectividade com a internet para sua VPC, você deve criar um gateway de internet. Pense no gateway como um modem. Assim como um modem conecta seu computador à internet, o gateway de internet conecta sua VPC à internet. Ao contrário do seu modem em casa, que às vezes fica offline, um gateway de internet é altamente disponível e escalável. Depois de criar um gateway de internet, você o associa à sua VPC.

![](/images/vpc/internet_gateway.png)

**Gateway privado virtual**

 Um gateway privado virtual conecta sua VPC a outra rede privada. Ao criar e associar um gateway privado virtual a uma VPC, o gateway atua como âncora no lado da AWS da conexão. No outro lado da conexão, você precisará conectar um gateway de cliente à outra rede privada. Um dispositivo de gateway de cliente é um dispositivo físico ou aplicativo de software no seu lado da conexão. Quando você tem ambos os gateways, você pode então estabelecer uma conexão de rede privada virtual (VPN) criptografada entre os dois lados.

![](/images/vpc/virtual_private-gateway.png)

**AWS Direct Connect**

![](/images/vpc/direct_connect.png)

Para estabelecer uma conexão física segura entre seu data center local e sua Amazon VPC, você pode usar o AWS Direct Connect. Com o AWS Direct Connect, sua rede interna é conectada a um local do AWS Direct Connect por meio de um cabo de fibra óptica Ethernet padrão. Essa conexão permite criar interfaces virtuais diretamente para serviços AWS públicos ou para sua VPC.

Com o AWS Direct Connect, o tráfego da sua rede permanece na rede global da AWS e nunca toca a internet pública.


Compreender a Amazon VPC e seus componentes é fundamental para projetar e implementar uma infraestrutura de rede segura e altamente disponível na AWS. Esperamos que este post tenha sido útil para entender melhor como a Amazon VPC funciona e como você pode usá-la para criar redes isoladas na nuvem da AWS.

Para mais informações, consulte a documentação oficial da AWS sobre a Amazon VPC e seus componentes. E fique atento para mais conteúdo sobre arquitetura na AWS em nosso blog.

### Recursos 

- AWS user guide: [What Is Amazon VPC?](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
- AWS user guide: [How Amazon VPC Works](https://docs.aws.amazon.com/vpc/latest/userguide/how-it-works.html)
- AWS user guide: [How AWS Site-to-Site VPN Works](https://docs.aws.amazon.com/vpn/latest/s2svpn/how_it_works.html)
- AWS user guide: [What Is AWS Direct Connect](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html)?