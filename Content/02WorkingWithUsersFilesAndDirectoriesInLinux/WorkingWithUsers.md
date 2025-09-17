# 👥 Trabalhando com Usuários no Linux

Nesta etapa do módulo, vamos entender como o Linux gerencia usuários, grupos e permissões. Você aprenderá a criar usuários, gerenciar grupos, configurar permissões em arquivos e até automatizar tarefas com scripts.

---

## 👤 Criando e Excluindo Usuários

### Criar usuário:

```bash

sudo adduser nomeusuario

```

O sistema pedirá uma senha e informações adicionais (opcionais).

### 📌 Exemplo:

```bash

sudo adduser fabio

```

### Excluir usuário:

```bash

sudo deluser nomeusuario

```

Para excluir também o diretório pessoal:

```bash

sudo deluser --remove-home nomeusuario

```

---

## 📝 Editando Informações do Usuário

### Comando `usermod`:

* Altera configurações de usuários existentes.

Exemplos:

```bash

sudo usermod -l novo_nome fabio   # Muda o login de 'fabio' para 'novo_nome'
sudo usermod -d /novo/caminho fabio  # Muda o diretório home
sudo usermod -s /bin/bash fabio      # Muda o shell padrão

```

---

## 📜 Shell Script – Criando Usuários em Lote

Você pode automatizar a criação de vários usuários com um simples script:

### Exemplo de `criar_usuarios.sh`:

```bash

#!/bin/bash

for usuario in joao maria ana carlos
do
  sudo adduser --disabled-password --gecos "" $usuario
  echo "Usuário $usuario criado com sucesso."
done

```

### Para executar:

```bash

chmod +x criar_usuarios.sh
./criar_usuarios.sh

```

---

## 👪 Adicionando Usuários a Grupos

### Ver grupos do usuário:

```bash

groups nomeusuario

```

### Adicionar a grupo:

```bash

sudo usermod -aG grupo nomeusuario

```

### 📌 Exemplo:

```bash

sudo usermod -aG sudo fabio

```

💡 A opção `-aG` adiciona sem remover os grupos existentes.

---

## 🧩 Criando Novos Grupos

### Criar grupo:

```bash

sudo addgroup nomegrupo

```

📌 Exemplo:

```bash

sudo addgroup desenvolvedores

```

### Excluir grupo:

```bash

sudo delgroup nomegrupo

```

---

### 🔐 Conhecendo o Sistema de Permissões

O Linux usa um sistema de permissões baseado em **usuário, grupo e outros** (others).

### Exemplo de listagem:

```bash

ls -l

```

```

-rwxr-xr-- 1 fabio desenvolvedores 1234 jun 28 10:00 script.sh

```

### 🔎 Interpretação:

* `rwx`: permissões do **dono**
* `r-x`: permissões do **grupo**
* `r--`: permissões de **outros usuários**

---

## 🔧 Alterando Permissões de Arquivos e Diretórios

### Comando `chmod`:

```bash

chmod [permissões] nome_arquivo

```

**Modos de uso:**

* Numérico:

  * `7 = rwx`
  * `6 = rw-`
  * `5 = r-x`
  * `4 = r--`

```bash

chmod 755 script.sh

```

Significa:

* Dono: leitura + escrita + execução
* Grupo: leitura + execução
* Outros: leitura + execução

### Diretórios:

Para um diretório ser acessado, ele precisa de permissão de **execução (`x`)**.

```bash

chmod 755 minha_pasta/

```

---

### 🛡️ Entendendo Melhor as Permissões de Execução em Scripts

Para executar um script `.sh`, ele precisa de permissão de execução.

### Exemplo:

```bash

chmod +x meu_script.sh
./meu_script.sh

```

### Verificação:

```bash

ls -l meu_script.sh

```

Se aparecer `-rwxr--r--`, significa que o dono tem permissão de execução (`x`).

💡 Dica: Scripts também podem ser executados com:

```bash

bash meu_script.sh

```

Mesmo sem permissão de execução, desde que você tenha leitura.

---

#### ✅ Conclusão

Você agora domina as operações essenciais para trabalhar com usuários e permissões no Linux:

* Criação e exclusão de usuários e grupos
* Modificação de atributos
* Automatização com shell scripts
* Controle fino de permissões de acesso

Essas habilidades são fundamentais para a administração de servidores Linux, segurança e organização de sistemas multiusuário.

---

### 🔗 Links de Estudo Recomendados

* [Guia adduser - Ubuntu Docs](https://manpages.ubuntu.com/manpages/focal/man8/adduser.8.html)
* [Comandos para Gerenciar Usuários no Linux](https://phoenixnap.com/kb/linux-add-user)
* [Permissões no Linux explicadas](https://www.hostinger.com.br/tutoriais/permissoes-de-arquivos-linux-chmod/)
* [Documentação oficial do chmod](https://man7.org/linux/man-pages/man1/chmod.1.html)

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Projeto: Formação Linux Fundamentals