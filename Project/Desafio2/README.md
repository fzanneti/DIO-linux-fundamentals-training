# Linux Fundamentals – DIO

## Script de Provisionamento de Servidor Apache2 no Linux

![GitHub repo size](https://img.shields.io/github/repo-size/fzanneti/DIO-linux-fundamentals-training)
![GitHub forks](https://img.shields.io/github/forks/fzanneti/DIO-linux-fundamentals-training?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/fzanneti/DIO-linux-fundamentals-training?style=social)
![Plataforma](https://img.shields.io/badge/Powered%20by-DIO.io-red?logo=data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjZmZmIiB2aWV3Qm94PSIwIDAgMzIgMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTYuNzEgMy4yNWMtMi44OCAxLjQxLTUuMDcgNC4yMy01LjA3IDcuNzYgMCAzLjU4IDIuMjggNi43IDUuMzMgOC4xNSAxLjgzLS42MiAyLjQtMi4yNiAyLjQtMy44MSAwLS4yMy0uMDItLjQ1LS4wNS0uNjZBLjQ0LjQ0IDAgMDExMC4xIDExYy4yNC0uNzUuMTEtMS41My0uMy0yLjIyQzguOTIgNy45NiA3LjMzIDcuNSA1Ljc0IDcuNjZhNS41NSA1LjU1IDAgM)
![Autor](https://img.shields.io/badge/Autor-fzanneti-blue?style=flat-square&logo=github)

Este repositório contém um **script Bash** desenvolvido para automatizar a configuração inicial de um **servidor web Apache2**, conforme proposto no curso **Linux Fundamentals – DIO**.

O script realiza a atualização do sistema, instala pacotes essenciais e publica uma aplicação web estática baixada diretamente de um repositório no GitHub.

---

### Desafio Proposto

Automatizar os seguintes passos em um ambiente Linux:

- Atualizar os pacotes do sistema
- Instalar o servidor **Apache2**
- Instalar o utilitário **unzip**
- Baixar a aplicação web hospedada em um repositório GitHub
- Descompactar e publicar os arquivos da aplicação no diretório padrão do Apache

---

### Estrutura do Script

```bash

#!/bin/bash

echo "Atualizando e instalando aplicativos essenciais no servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando arquivo do repositório na pasta /tmp..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo baixado..."
unzip main.zip

echo "Acessando o diretório do projeto..."
cd linux-site-dio-main

echo "Copiando arquivos para a pasta padrão do Apache..."
cp -R * /var/www/html/

```

---

### Como Utilizar

1. Clone ou baixe este repositório:

```bash

git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio

```

2. Torne o script executável:

```bash

chmod +x provisioning_an_apache_web_server.sh

```

3. Execute o script com permissões de administrador:

```bash

sudo ./provisioning_an_apache_web_server.sh

```

---

### Acesso à Aplicação

Após a execução do script, abra seu navegador e acesse:

```

http://localhost

```

Ou, se estiver utilizando uma máquina virtual ou VPS:

```

http://<IP-da-maquina>

```

Você verá a aplicação web padrão da DIO publicada via Apache2.

---

### Requisitos

- Distribuição Linux baseada em **Debian/Ubuntu**
- Permissão de superusuário (root ou sudo)
- Conexão com a internet ativa

---

### Observações

**Certifique-se de que o Apache2 esteja rodando:**

```bash

sudo systemctl status apache2

```

* Se necessário, reinicie o serviço:

```bash

sudo systemctl restart apache2

```

- O diretório padrão de publicação do Apache é `/var/www/html/`

---

### Links de Estudo

🔗[Apache2 no Ubuntu – DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-20-04-pt)      
🔗[Comando unzip – Ubuntu Manpages](https://manpages.ubuntu.com/manpages/focal/en/man1/unzip.1.html)    

---

### Créditos

Curso oferecido por [DIO](https://www.dio.me/)        
Instrutor: [Denilson Bonatti](https://github.com/denilsonbonatti)

---

### Sugestões de melhorias (extra)

- Validar se o Apache já está instalado
- Adicionar tratamento de erros (ex: `if`, `else`, `||`)
- Criar logs de execução
- Adaptar para outras distribuições (ex: CentOS, Fedora)

---

### Certificado

<img src="https://github.com/fzanneti/DIO-linux-fundamentals-training/blob/main/Assets/images/certificados/16-infraestrutura-como-codigo-script-de-provisionamento-de-um-servidor-web-Apache.jpg" alt="Certificado" width="600px">

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Curso: Formação Linux Fundamentals
[![GitHub](https://img.shields.io/badge/GitHub-fzanneti-181717?style=flat&logo=github)](https://github.com/fzanneti)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-fzanneti-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/fzanneti)