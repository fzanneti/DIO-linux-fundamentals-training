# Linux Fundamentals – DIO

## Provisionamento de Usuários, Grupos e Permissões no Linux

![GitHub repo size](https://img.shields.io/github/repo-size/fzanneti/DIO-linux-fundamentals-training)
![GitHub forks](https://img.shields.io/github/forks/fzanneti/DIO-linux-fundamentals-training?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/fzanneti/DIO-linux-fundamentals-training?style=social)
![Plataforma](https://img.shields.io/badge/Powered%20by-DIO.io-red?logo=data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjZmZmIiB2aWV3Qm94PSIwIDAgMzIgMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTYuNzEgMy4yNWMtMi44OCAxLjQxLTUuMDcgNC4yMy01LjA3IDcuNzYgMCAzLjU4IDIuMjggNi43IDUuMzMgOC4xNSAxLjgzLS42MiAyLjQtMi4yNiAyLjQtMy44MSAwLS4yMy0uMDItLjQ1LS4wNS0uNjZBLjQ0LjQ0IDAgMDExMC4xIDExYy4yNC0uNzUuMTEtMS41My0uMy0yLjIyQzguOTIgNy45NiA3LjMzIDcuNSA1Ljc0IDcuNjZhNS41NSA1LjU1IDAgM)
![Autor](https://img.shields.io/badge/Autor-fzanneti-blue?style=flat-square&logo=github)

Este repositório contém um script Bash desenvolvido como parte do desafio da **Formação Linux Fundamentals** da [DIO](https://www.dio.me/).

O objetivo é automatizar o processo de criação de diretórios, grupos, usuários e definir corretamente as permissões de acesso, simulando a estrutura de uma empresa com diferentes departamentos.

---

### Descrição do Desafio

O script deve:

- Criar os diretórios: `/publico`, `/adm`, `/ven`, `/sec`
- Criar os grupos de usuários: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`
- Criar os usuários e adicioná-los aos respectivos grupos
- Definir as permissões de cada diretório:
  - O diretório `/publico` deve ter acesso total para todos os usuários (permissão `777`)
  - Os diretórios `/adm`, `/ven` e `/sec` devem ter acesso total apenas para os membros do grupo correspondente (permissão `770`)
- Todos os diretórios devem ser de propriedade do usuário `root`

---

### Grupos e Usuários

| Diretório | Grupo     | Usuários                      |
|----------|-----------|-------------------------------|
| /adm     | GRP_ADM   | carlos, maria, joao           |
| /ven     | GRP_VEN   | debora, sebastiana, roberto   |
| /sec     | GRP_SEC   | josefina, amanda, rogerio     |
| /publico | Todos     | Todos os usuários              |

---

### Como Executar o Script

> Este script deve ser executado com permissões de **superusuário (root)**, pois envolve a criação de usuários, grupos e alteração de permissões no sistema.

---

### Tecnologias Utilizadas

- Shell Script (Bash)
- Comandos Linux (useradd, groupadd, mkdir, chmod, chown)
- Criptografia de senha com `openssl passwd`

---

### Formação

Este projeto faz parte da trilha:

🔗[Formação Linux Fundamentals - DIO](https://web.dio.me/track/formacao-linux-fundamentals)

---

### 🤝 Créditos

Curso oferecido por [DIO](https://www.dio.me/)        
Instrutor: [Denilson Bonatti](https://github.com/denilsonbonatti)

---

### Certificado

<img src="https://github.com/fzanneti/DIO-linux-fundamentals-training/blob/main/Assets/images/certificados/7-infraestrutura-como-codigo-script-de-criacao-de-estrutura-de-usuarios-diretorios-e-permissoes.jpg" alt="Certificado" width="600px">

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Projeto: Formação Linux Fundamentals
[![GitHub](https://img.shields.io/badge/GitHub-fzanneti-181717?style=flat&logo=github)](https://github.com/fzanneti)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-fzanneti-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/fzanneti)