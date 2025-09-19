# Linux Fundamentals – DIO

## 3.3 - Manipulação de Arquivos e Processos no Linux

![GitHub repo size](https://img.shields.io/github/repo-size/fzanneti/DIO-linux-fundamentals-training)
![GitHub forks](https://img.shields.io/github/forks/fzanneti/DIO-linux-fundamentals-training?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/fzanneti/DIO-linux-fundamentals-training?style=social)
![Plataforma](https://img.shields.io/badge/Powered%20by-DIO.io-red?logo=data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjZmZmIiB2aWV3Qm94PSIwIDAgMzIgMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTYuNzEgMy4yNWMtMi44OCAxLjQxLTUuMDcgNC4yMy01LjA3IDcuNzYgMCAzLjU4IDIuMjggNi43IDUuMzMgOC4xNSAxLjgzLS42MiAyLjQtMi4yNiAyLjQtMy44MSAwLS4yMy0uMDItLjQ1LS4wNS0uNjZBLjQ0LjQ0IDAgMDExMC4xIDExYy4yNC0uNzUuMTEtMS41My0uMy0yLjIyQzguOTIgNy45NiA3LjMzIDcuNSA1Ljc0IDcuNjZhNS41NSA1LjU1IDAgM)
![Autor](https://img.shields.io/badge/Autor-fzanneti-blue?style=flat-square&logo=github)

Nesta parte do módulo, vamos aprender a manipular arquivos diretamente pelo terminal — copiando, movendo e renomeando — e também a lidar com processos, visualizando, iniciando e encerrando-os.

---

### Copiando Arquivos

**Comando `cp` (copy):**

```bash

cp origem destino

```

**Exemplos:**

* Copiar um arquivo para outra pasta:

```bash

cp arquivo.txt /home/fabio/documentos/

```

- Copiar e renomear no mesmo comando:

```bash

cp arquivo.txt novo_arquivo.txt

```

- Copiar recursivamente (diretórios):

```bash

cp -r pasta_origem/ pasta_destino/

```

### Principais opções:

| Opção | Função                                              |
| ----- | --------------------------------------------------- |
| `-r`  | Recursivo (necessário para diretórios)              |
| `-v`  | Verboso (exibe o que está sendo copiado)            |
| `-i`  | Interativo (pede confirmação antes de sobrescrever) |

---

### Renomeando e Movendo Arquivos

**Comando `mv` (move/rename):**

```bash

mv origem destino

```

**Exemplos:**

- Renomear um arquivo:

  ```bash

  mv antigo.txt novo.txt
  
  ```

- Mover um arquivo para outra pasta:

  ```bash

  mv arquivo.txt /home/fabio/backup/
  
  ```

- Mover e renomear ao mesmo tempo:

  ```bash

  mv relatorio.txt /home/fabio/relatorios/relatorio_junho.txt
  
  ```

> Atenção: Se o destino for um nome de pasta, o arquivo será movido. Se for um nome de arquivo, será renomeado.

---

### Iniciando, Visualizando e Encerrando um Processo

No Linux, **tudo que roda é um processo**. Cada programa em execução tem um ID único chamado **PID**.

---

### Iniciando um processo em segundo plano

Você pode iniciar um processo e deixá-lo rodando em segundo plano:

```bash

nome_comando &

```

**Exemplo:**

```bash

gedit &

```

O `&` ao final executa o processo em segundo plano.

---

### Visualizando Processos

**Comando `ps`:**

```bash

ps aux

```

**Explicação:**

* `a`: mostra todos os usuários
* `u`: exibe o nome do usuário
* `x`: inclui processos sem terminal associado

**Comando `top`:**

```bash

top

```

- Interface interativa com os processos em tempo real
- Pressione `q` para sair

**Comando `htop` (mais avançado):**

```bash

sudo apt install htop
htop

```

---

### Encerrando um Processo

**Encontrar o PID:**

```bash

ps aux | grep nome_processo

```

📌 Exemplo:

```bash

ps aux | grep firefox

```

**Encerrar com `kill`:**

```bash

kill PID

```

Exemplo:

```bash

kill 12345

```

**Encerrar forçadamente:**

```bash

kill -9 PID

```

- Use o `-9` com cuidado — ele força a parada e não permite que o processo finalize normalmente.

**Encerrar todos os processos de um nome:**

```bash

pkill nome_processo

```

Exemplo:

```bash

pkill firefox

```

---

### Conclusão

Você agora está preparado para:

* Copiar, mover e renomear arquivos e diretórios no terminal
* Iniciar e monitorar processos ativos
* Encerrar processos de forma segura ou forçada

Estas ações são essenciais tanto no dia a dia do usuário comum quanto na administração de servidores e scripts de automação.

---

### Links de Estudo Recomendados

🔗[Comando cp - Linuxize](https://linuxize.com/post/linux-cp-command/)      
🔗[Comando mv - Ubuntu Manpage](https://manpages.ubuntu.com/manpages/focal/en/man1/mv.1.html)     
🔗[Processos com ps, top e kill - Tutorialspoint](https://www.tutorialspoint.com/unix/unix-processes.htm)    
🔗[htop - Ferramenta visual de monitoramento](https://hisham.hm/htop/)    

---

### Certificado

<img src="https://github.com/fzanneti/DIO-linux-fundamentals-training/blob/main/Assets/images/certificados/11-copiando-arquivos-e-manipulando-processos.jpg" alt="Certificado" width="600px">

---

##### ✍️ Seção criada por: *Fabio Zanneti* 🎯 Curso: **Formação Linux Fundamentals**
[![GitHub](https://img.shields.io/badge/GitHub-fzanneti-181717?style=flat&logo=github)](https://github.com/fzanneti)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-fzanneti-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/fzanneti)