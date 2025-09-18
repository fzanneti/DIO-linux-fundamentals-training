# Linux Fundamentals – DIO

## 3.3 - Gerenciamento de Pacotes no Linux

![GitHub repo size](https://img.shields.io/github/repo-size/fzanneti/DIO-linux-fundamentals-training)
![GitHub forks](https://img.shields.io/github/forks/fzanneti/DIO-linux-fundamentals-training?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/fzanneti/DIO-linux-fundamentals-training?style=social)
![Plataforma](https://img.shields.io/badge/Powered%20by-DIO.io-red?logo=data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjZmZmIiB2aWV3Qm94PSIwIDAgMzIgMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTYuNzEgMy4yNWMtMi44OCAxLjQxLTUuMDcgNC4yMy01LjA3IDcuNzYgMCAzLjU4IDIuMjggNi43IDUuMzMgOC4xNSAxLjgzLS42MiAyLjQtMi4yNiAyLjQtMy44MSAwLS4yMy0uMDItLjQ1LS4wNS0uNjZBLjQ0LjQ0IDAgMDExMC4xIDExYy4yNC0uNzUuMTEtMS41My0uMy0yLjIyQzguOTIgNy45NiA3LjMzIDcuNSA1Ljc0IDcuNjZhNS41NSA1LjU1IDAgM)
![Autor](https://img.shields.io/badge/Autor-fzanneti-blue?style=flat-square&logo=github)

O gerenciamento de pacotes é um dos pilares da administração de sistemas Linux. Neste documento, você aprenderá a instalar, atualizar e remover pacotes de software usando os gerenciadores mais comuns em distribuições **Debian-based (Ubuntu, Mint)** e **Red Hat-based (Fedora, CentOS, RHEL)**, além de instalar arquivos `.deb` manualmente.

---

### Gerenciamento de Pacotes (Ubuntu / Debian)

Distribuições baseadas no Debian (como Ubuntu e Linux Mint) utilizam os comandos `apt` e `dpkg` para gerenciamento de pacotes.

---

**Atualizar repositórios:**

```bash

sudo apt update

```

**Atualizar todos os pacotes instalados:**

```bash

sudo apt upgrade

```

**Atualizar o sistema completamente (inclusive dependências novas):**

```bash

sudo apt full-upgrade

```

---

### Instalação de Pacotes no Ambiente Desktop

**Para instalar pacotes:**

```bash

sudo apt install nome-do-pacote

```

📌 Exemplo:

```bash

sudo apt install gimp
sudo apt install vlc

```

**Para remover pacotes:**

```bash

sudo apt remove nome-do-pacote

```

**Para remover pacotes + configurações:**

```bash

sudo apt purge nome-do-pacote

```

**Para limpar pacotes que não são mais necessários:**

```bash

sudo apt autoremove

```

---

### Gerenciamento de Pacotes (Fedora / Red Hat / CentOS)

Distribuições baseadas no Red Hat usam `dnf` ou `yum` como gerenciador de pacotes.

**Atualizar repositórios e pacotes:**

```bash

sudo dnf update

```

**Instalar um pacote:**

```bash

sudo dnf install nome-do-pacote

```

**Remover um pacote:**

```bash

sudo dnf remove nome-do-pacote

```

> Em sistemas mais antigos como CentOS 7, o comando `yum` pode ser usado no lugar de `dnf`.

---

### Realizando a Instalação de Arquivos `.deb`

Pacotes `.deb` são como "instaladores" no estilo Linux, similares ao `.exe` no Windows. São usados em sistemas baseados em Debian.

**Baixando um `.deb` (exemplo real):**

```bash

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

```

**Instalando com `dpkg`:**

```bash

sudo dpkg -i google-chrome-stable_current_amd64.deb

```

**Corrigindo dependências (se der erro):**

```bash

sudo apt install -f

```

> Dica: Sempre que usar `.deb`, verifique se as dependências estão satisfeitas com `apt install -f`.

---

### Conclusão

Você agora domina o básico para gerenciar pacotes nos principais sistemas Linux:

* Atualizar o sistema
* Instalar e remover pacotes
* Usar `apt`, `dnf`, `yum` e `dpkg`
* Trabalhar com arquivos `.deb`

Esses conhecimentos são fundamentais para manter sistemas Linux atualizados, seguros e com os softwares necessários para o dia a dia.

---

### Links de Estudo Recomendados

🔗[Documentação do APT (Ubuntu)](https://help.ubuntu.com/lts/serverguide/apt.html)     
🔗[Documentação do DNF (Fedora)](https://dnf.readthedocs.io/en/latest/)    
🔗[O que é um arquivo .deb](https://wiki.debian.org/DebianPackage)    
🔗[Site oficial Ubuntu Packages](https://packages.ubuntu.com/)    

---

<img src="https://github.com/fzanneti/DIO-linux-fundamentals-training/blob/main/Assets/images/certificados/9-gerenciamento-de-pacotes-Linux.jpg" alt="Certificado" width="600px">

---

##### ✍️ Seção criada por: *Fabio Zanneti* 🎯 Curso: **Formação Linux Fundamentals**
[![GitHub](https://img.shields.io/badge/GitHub-fzanneti-181717?style=flat&logo=github)](https://github.com/fzanneti)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-fzanneti-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/fzanneti)