# Linux Fundamentals – DIO

## 1.3 - Acesso Remoto ao Linux

![GitHub repo size](https://img.shields.io/github/repo-size/fzanneti/DIO-linux-fundamentals-training)
![GitHub forks](https://img.shields.io/github/forks/fzanneti/DIO-linux-fundamentals-training?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/fzanneti/DIO-linux-fundamentals-training?style=social)
![Plataforma](https://img.shields.io/badge/Powered%20by-DIO.io-red?logo=data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjZmZmIiB2aWV3Qm94PSIwIDAgMzIgMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTYuNzEgMy4yNWMtMi44OCAxLjQxLTUuMDcgNC4yMy01LjA3IDcuNzYgMCAzLjU4IDIuMjggNi43IDUuMzMgOC4xNSAxLjgzLS42MiAyLjQtMi4yNiAyLjQtMy44MSAwLS4yMy0uMDItLjQ1LS4wNS0uNjZBLjQ0LjQ0IDAgMDExMC4xIDExYy4yNC0uNzUuMTEtMS41My0uMy0yLjIyQzguOTIgNy45NiA3LjMzIDcuNSA1Ljc0IDcuNjZhNS41NSA1LjU1IDAgM)
![Autor](https://img.shields.io/badge/Autor-fzanneti-blue?style=flat-square&logo=github)

Neste guia, vamos aprender como acessar uma máquina Linux de forma remota a partir de sistemas **Windows** e **Linux**, seja no ambiente local (em uma VM) ou na nuvem (AWS EC2). Também veremos como **excluir uma instância** com segurança.

---

### Acesso Remoto via Windows (com PuTTY)

No Windows, uma das ferramentas mais utilizadas para acessar servidores Linux é o **PuTTY**, um cliente SSH leve e gratuito.

---

### Passo a passo:

1. Baixe o PuTTY:  
   🔗[PuTTY - Download](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
2. Instale e abra o programa.
3. No campo **Host Name (or IP address)**, insira o IP público da sua máquina na nuvem (ex: da AWS EC2).
4. Em **Connection > SSH > Auth**, selecione o arquivo `.ppk` (sua chave de acesso convertida).
5. Volte na tela inicial e clique em **"Open"**.
6. Uma janela de terminal será aberta. Digite o usuário da instância (ex: `ubuntu`) e pressione Enter.

> Se sua chave estiver no formato `.pem`, use o **PuTTYgen** (vem junto com o PuTTY) para convertê-la para `.ppk`.

---

### Acesso Remoto via Linux (Terminal SSH)

O Linux já vem com o cliente SSH instalado por padrão.

---

### Comando:

```bash

ssh -i caminho/da/sua-chave.pem ubuntu@ip-da-instancia

```

### Exemplo:

```bash

ssh -i ~/Downloads/minha-chave.pem ubuntu@54.123.45.67

```

* `-i`: indica a chave privada de acesso
* `ubuntu`: usuário padrão da instância (depende da distro)
* `54.123.45.67`: IP público da instância

---

### Acessando uma Máquina Virtual em Nuvem (PuTTY)

1. Certifique-se de que sua instância EC2 esteja **ativa** e com o **Security Group** liberando a porta 22 (SSH).
2. Obtenha o IP público da instância na AWS.
3. Use o **PuTTY** conforme descrito acima.

**Dica de segurança**:

* Nunca compartilhe sua chave privada
* Desative instâncias não utilizadas
* Use conexões SSH sempre com autenticação por chave

---

### Acessando Máquina Virtual via SSH (Linha de Comando)

**Requisitos:**

* Ter a chave `.pem` salva no computador
* Ter permissões corretas no arquivo:

```bash

chmod 400 minha-chave.pem

```

### Comando para acessar:

```bash

ssh -i minha-chave.pem ubuntu@<IP-da-instancia>

```

**Usuários comuns por distribuição:**

| Distribuição | Usuário padrão |
| ------------ | -------------- |
| Ubuntu       | `ubuntu`       |
| Amazon Linux | `ec2-user`     |
| CentOS       | `centos`       |

---

### Excluindo uma Instância na AWS (EC2)

Se você não precisa mais da sua máquina na nuvem, excluí-la ajuda a evitar custos.

---

**Passo a passo:**

1. Acesse o **AWS Console**: [https://console.aws.amazon.com/ec2](https://console.aws.amazon.com/ec2)
2. Vá em **Instâncias > Executando**.
3. Selecione a instância desejada.
4. Clique em **Ações > Instância de estado > Encerrar instância**.
5. Confirme a exclusão.

> Atenção: A instância **não poderá ser recuperada** após ser encerrada. Os dados do disco serão perdidos (a menos que estejam em EBS separado com política de retenção).

---

### Conclusão

Agora você já sabe como acessar sua máquina Linux remotamente, tanto por SSH via terminal quanto com ferramentas como o PuTTY. Aprendeu também como excluir uma instância com segurança na AWS.

Estes conhecimentos são base para administrar servidores Linux, e também para uso em automação de testes, DevOps e infraestrutura em nuvem.

---

### Links de Estudo Recomendados

🔗[Download do PuTTY](https://www.putty.org/)       
🔗[Como usar SSH na AWS - Docs](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)       
🔗[Conversão de PEM para PPK (PuTTYgen)](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/putty.html)     

---

### Certificado

<img src="https://github.com/fzanneti/DIO-linux-fundamentals-training/blob/main/Assets/images/certificados/3-acesso-remoto-a-maquina-Linux.jpg" alt="Certificado" width="600px">

<img src="https://github.com/fzanneti/DIO-linux-fundamentals-training/blob/main/Assets/images/certificados/4-materiais-complementares-introducao-ao-Linux.jpg" alt="Certificado" width="600px">

---

##### ✍️ Seção criada por: *Fabio Zanneti* 🎯 Curso: **Formação Linux Fundamentals**
[![GitHub](https://img.shields.io/badge/GitHub-fzanneti-181717?style=flat&logo=github)](https://github.com/fzanneti)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-fzanneti-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/fzanneti)