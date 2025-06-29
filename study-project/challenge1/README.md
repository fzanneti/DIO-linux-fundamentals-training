# 🐧 Provisionamento de Usuários, Grupos e Permissões no Linux

Este repositório contém um script Bash desenvolvido como parte do desafio da **Formação Linux Fundamentals** da [DIO](https://www.dio.me/).

O objetivo é automatizar o processo de criação de diretórios, grupos, usuários e definir corretamente as permissões de acesso, simulando a estrutura de uma empresa com diferentes departamentos.

---

### 📄 Descrição do Desafio

O script deve:

- Criar os diretórios: `/publico`, `/adm`, `/ven`, `/sec`
- Criar os grupos de usuários: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`
- Criar os usuários e adicioná-los aos respectivos grupos
- Definir as permissões de cada diretório:
  - O diretório `/publico` deve ter acesso total para todos os usuários (permissão `777`)
  - Os diretórios `/adm`, `/ven` e `/sec` devem ter acesso total apenas para os membros do grupo correspondente (permissão `770`)
- Todos os diretórios devem ser de propriedade do usuário `root`

---

### 👥 Grupos e Usuários

| Diretório | Grupo     | Usuários                      |
|----------|-----------|-------------------------------|
| /adm     | GRP_ADM   | carlos, maria, joao           |
| /ven     | GRP_VEN   | debora, sebastiana, roberto   |
| /sec     | GRP_SEC   | josefina, amanda, rogerio     |
| /publico | Todos     | Todos os usuários              |

---

### 💻 Como Executar o Script

> ⚠️ Este script deve ser executado com permissões de **superusuário (root)**, pois envolve a criação de usuários, grupos e alteração de permissões no sistema.

---

### 🛠️ Tecnologias Utilizadas

* Shell Script (Bash)
* Comandos Linux (useradd, groupadd, mkdir, chmod, chown)
* Criptografia de senha com `openssl passwd`

---

## 📚 Formação

Este projeto faz parte da trilha:

🎓 **[Formação Linux Fundamentals - DIO](https://web.dio.me/track/formacao-linux-fundamentals)**

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Projeto: Formação Linux Fundamentals