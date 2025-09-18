# 🗄️ Servidor de Banco de Dados com Linux (MySQL)

Nesta parte do módulo, vamos entender o que é um servidor de banco de dados, instalar o MySQL no Linux e verificar se o serviço está funcionando corretamente.

---

### 🧭 O que é um Servidor de Banco de Dados?

Um **servidor de banco de dados** é um software que armazena, organiza e fornece acesso estruturado a dados. Ele permite que aplicações se conectem e realizem operações como:

- Inserção de dados (INSERT)
- Consulta (SELECT)
- Atualização (UPDATE)
- Exclusão (DELETE)

### 🔎 Exemplos de usos:
- Sistemas de login
- Aplicações web com back-end (PHP, Python, Java etc.)
- ERP, CRM, e-commerces, entre outros

O **MySQL** é um dos bancos de dados mais utilizados no mundo, com foco em performance, confiabilidade e compatibilidade com diversos sistemas operacionais.

---

## ⚙️ Instalando o MySQL no Linux (Ubuntu/Debian)

### 1. Atualizar o sistema

```bash

sudo apt update && sudo apt upgrade -y

```

### 2. Instalar o MySQL Server

```bash

sudo apt install mysql-server -y

```

### 3. Verificar se o serviço está rodando

```bash

sudo systemctl status mysql

```

Você deve ver:

```

active (running)

```

---

### 4. Iniciar ou parar o MySQL manualmente

```bash

sudo systemctl start mysql      # Inicia o serviço
sudo systemctl stop mysql       # Para o serviço
sudo systemctl restart mysql    # Reinicia o serviço

```

---

### 5. Acessar o MySQL via terminal

```bash

sudo mysql

```

Você entrará no prompt do MySQL:

```mysql

mysql>

```

Para sair:

```mysql

exit

```

---

### 6. (Opcional) Configurar senha do root

Na instalação padrão no Ubuntu, o acesso inicial ao MySQL root não pede senha.

Para alterar isso:

```bash

sudo mysql_secure_installation

```

Siga os passos para:

* Definir senha do root
* Remover usuários anônimos
* Desabilitar acesso root remoto
* Remover banco de testes

---

### 7. Criar banco de dados e usuário (exemplo prático)

Acesse o MySQL:

```bash

sudo mysql

```

Crie um banco:

```sql

CREATE DATABASE meu_banco;

```

Crie um usuário e conceda acesso:

```sql

CREATE USER 'fabio'@'localhost' IDENTIFIED BY 'minhasenha123';
GRANT ALL PRIVILEGES ON meu_banco.* TO 'fabio'@'localhost';
FLUSH PRIVILEGES;
EXIT;

```

---

### 🧪 Testar conexão com o novo usuário

```bash

mysql -u fabio -p

```

Digite a senha e, se tudo estiver certo, você verá o terminal do MySQL conectado ao novo usuário.

---

#### ✅ Conclusão

Você aprendeu como:

* Instalar e iniciar o MySQL Server no Linux
* Acessar o banco via terminal
* Criar um banco e usuários
* Configurar boas práticas de segurança básicas

Esse é o primeiro passo para integrar bancos de dados a aplicações web e APIs no ecossistema Linux.

---

### 🔗 Links de Estudo Recomendados

* [Documentação oficial do MySQL](https://dev.mysql.com/doc/)
* [DigitalOcean – Instalando o MySQL no Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04-pt)
* [SQL básico – W3Schools](https://www.w3schools.com/sql/)

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Projeto: Formação Linux Fundamentals