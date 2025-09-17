# 📁 Manipulando Arquivos no Linux

Neste módulo, você aprenderá a realizar tarefas básicas e essenciais relacionadas à manipulação de arquivos no Linux por meio do terminal. Isso inclui navegar pelo sistema, criar diretórios, localizar arquivos, usar permissões de administrador e manipular arquivos de texto.

---

### 🖥️ Terminal Linux - Apresentação

O **terminal** é uma interface baseada em texto onde você digita comandos diretamente para o sistema operacional.

### Por que usar o terminal?
- Permite controle total do sistema
- Automatização de tarefas
- Operações mais rápidas e precisas

💡 Para abrir o terminal:
- Ubuntu: `Ctrl + Alt + T`

---

## 📂 Navegando pelo Sistema de Arquivos

### Comandos básicos de navegação:

```bash

pwd       # Mostra o caminho atual (diretório)
ls        # Lista arquivos e diretórios
cd pasta  # Entra na pasta especificada
cd ..     # Volta um diretório
cd ~      # Vai para o diretório pessoal

```

### 📌 Exemplo prático:

```bash

cd /etc
ls
cd ..
pwd

```

---

## 🔍 Filtrando a Exibição de Arquivos

### Opções úteis com `ls`:

```bash

ls -l      # Exibe detalhes (permissões, tamanho, dono)
ls -a      # Mostra arquivos ocultos (iniciados com ".")
ls -lh     # Tamanhos legíveis (KB, MB)
ls -R      # Lista recursivamente pastas e subpastas

```

---

## 🔎 Localizando Arquivos

### Comando `find`:

```bash

find /caminho -name "arquivo.txt"

```

Exemplo:

```bash

find /home/fabio -name "*.log"

```

### Comando `locate`:

Mais rápido, pois usa um banco de dados (requer atualização com `updatedb`).

```bash

locate arquivo.txt

```

---

### 📁 Criando Diretórios

```bash

mkdir nome-da-pasta          # Cria um diretório
mkdir -p caminho/completo    # Cria pastas recursivamente

```

Exemplo:

```bash

mkdir projetos
mkdir -p estudos/linux/comandos

```

---

### 🗑️ Excluindo Arquivos e Diretórios

```bash

rm arquivo.txt               # Remove arquivo
rm -r pasta/                 # Remove diretório e conteúdo
rm -rf pasta/                # Remove sem pedir confirmação (cuidado!)

```

⚠️ **Atenção:** `rm -rf` pode apagar todo o sistema. Use com cautela.

---

## 📚 Obtendo Ajuda

### Comando `man`:

Exibe o manual do comando.

```bash

man ls
man cd

```

### Outros comandos de ajuda:

```bash

comando --help

```

Exemplo:

```bash

mkdir --help

```

---

## 🔐 Executando Tarefas Administrativas como Root

Algumas ações exigem permissões de administrador (root).

### Comando `sudo`:

```bash

sudo comando

```

Exemplo:

```bash

sudo apt update

```

---

## 👤 Logando como Usuário Root

### Acessar como root:

```bash

sudo su

```

### Alternar para o usuário root:

```bash

su -

```

🔐 **Senha do root** pode ser solicitada. Em algumas distros, o root está desabilitado por padrão.

---

### 🌐 Liberando Acesso Remoto do Usuário Root (em VMs/Cloud)

1. Edite o arquivo de configuração do SSH:

```bash

sudo nano /etc/ssh/sshd_config

```

2. Localize a linha:

```bash

PermitRootLogin prohibit-password
   
```

3. Altere para:

```bash

PermitRootLogin yes

```

4. Reinicie o serviço:

```bash

sudo systemctl restart ssh

```

⚠️ **Cuidado:** Liberar acesso root remoto é uma prática arriscada. Use com segurança e apenas quando necessário.

---

## 📝 Trabalhando com Arquivos de Texto

### Visualizar conteúdo:

```bash

cat arquivo.txt         # Mostra tudo de uma vez
less arquivo.txt        # Permite rolar o conteúdo
head arquivo.txt        # Mostra as primeiras 10 linhas
tail arquivo.txt        # Mostra as últimas 10 linhas

```

### Criar e editar rapidamente:

```bash

echo "texto" > arquivo.txt    # Cria e escreve
nano arquivo.txt              # Editor de texto no terminal
vi arquivo.txt                # Editor mais avançado

```

---

## 📜 Histórico de Comandos

### Comando `history`:

```bash

history         # Lista os últimos comandos
!número         # Executa comando pelo número

```

### Exemplo:

```bash

!42

```

💡 Use as setas ↑ e ↓ para navegar pelo histórico de comandos.

---

#### ✅ Conclusão

Você agora está familiarizado com:

* Navegação pelo terminal
* Criação e exclusão de arquivos e diretórios
* Uso do root e permissões
* Localização e visualização de arquivos
* Acesso remoto com segurança

Esses são os **primeiros passos fundamentais** para dominar o Linux no dia a dia.

---

### 🔗 Links de Estudo Recomendados

* [Comandos básicos do Linux - Linux Handbook (EN)](https://linuxhandbook.com/linux-commands/)
* [Guia de terminal no Ubuntu](https://ubuntu.com/tutorials/command-line-for-beginners#1-overview)
* [Referência do comando find](https://linux.die.net/man/1/find)

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Projeto: Formação Linux Fundamentals