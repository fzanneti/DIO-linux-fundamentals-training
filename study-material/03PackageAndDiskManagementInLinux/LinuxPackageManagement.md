# 📦 Gerenciamento de Pacotes no Linux

O gerenciamento de pacotes é um dos pilares da administração de sistemas Linux. Neste documento, você aprenderá a instalar, atualizar e remover pacotes de software usando os gerenciadores mais comuns em distribuições **Debian-based (Ubuntu, Mint)** e **Red Hat-based (Fedora, CentOS, RHEL)**, além de instalar arquivos `.deb` manualmente.

---

## 📌 Gerenciamento de Pacotes (Ubuntu / Debian)

Distribuições baseadas no Debian (como Ubuntu e Linux Mint) utilizam os comandos `apt` e `dpkg` para gerenciamento de pacotes.

### 🔄 Atualizar repositórios:

```bash

sudo apt update

```

### ⬆️ Atualizar todos os pacotes instalados:

```bash

sudo apt upgrade

```

### 🔁 Atualizar o sistema completamente (inclusive dependências novas):

```bash

sudo apt full-upgrade

```

---

## 📥 Instalação de Pacotes no Ambiente Desktop

### Para instalar pacotes:

```bash

sudo apt install nome-do-pacote

```

📌 Exemplo:

```bash

sudo apt install gimp
sudo apt install vlc

```

### Para remover pacotes:

```bash

sudo apt remove nome-do-pacote

```

### Para remover pacotes + configurações:

```bash

sudo apt purge nome-do-pacote

```

### Para limpar pacotes que não são mais necessários:

```bash

sudo apt autoremove

```

---

## 🧰 Gerenciamento de Pacotes (Fedora / Red Hat / CentOS)

Distribuições baseadas no Red Hat usam `dnf` ou `yum` como gerenciador de pacotes.

### 🔄 Atualizar repositórios e pacotes:

```bash

sudo dnf update

```

### 📥 Instalar um pacote:

```bash

sudo dnf install nome-do-pacote

```

### ❌ Remover um pacote:

```bash

sudo dnf remove nome-do-pacote

```

> 📌 Em sistemas mais antigos como CentOS 7, o comando `yum` pode ser usado no lugar de `dnf`.

---

## 📂 Realizando a Instalação de Arquivos `.deb`

Pacotes `.deb` são como "instaladores" no estilo Linux, similares ao `.exe` no Windows. São usados em sistemas baseados em Debian.

### Baixando um `.deb` (exemplo real):

```bash

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

```

### Instalando com `dpkg`:

```bash

sudo dpkg -i google-chrome-stable_current_amd64.deb

```

### Corrigindo dependências (se der erro):

```bash

sudo apt install -f

```

> 💡 Dica: Sempre que usar `.deb`, verifique se as dependências estão satisfeitas com `apt install -f`.

---

#### ✅ Conclusão

Você agora domina o básico para gerenciar pacotes nos principais sistemas Linux:

* Atualizar o sistema
* Instalar e remover pacotes
* Usar `apt`, `dnf`, `yum` e `dpkg`
* Trabalhar com arquivos `.deb`

Esses conhecimentos são fundamentais para manter sistemas Linux atualizados, seguros e com os softwares necessários para o dia a dia.

---

### 🔗 Links de Estudo Recomendados

* [Documentação do APT (Ubuntu)](https://help.ubuntu.com/lts/serverguide/apt.html)
* [Documentação do DNF (Fedora)](https://dnf.readthedocs.io/en/latest/)
* [O que é um arquivo .deb](https://wiki.debian.org/DebianPackage)
* [Site oficial Ubuntu Packages](https://packages.ubuntu.com/)

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Projeto: Formação Linux Fundamentals