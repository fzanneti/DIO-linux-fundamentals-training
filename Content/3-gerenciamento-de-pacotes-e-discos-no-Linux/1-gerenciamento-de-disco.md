# Linux Fundamentals – DIO

## 3.1 - Gerenciamento de Discos no Linux

![GitHub repo size](https://img.shields.io/github/repo-size/fzanneti/DIO-linux-fundamentals-training)
![GitHub forks](https://img.shields.io/github/forks/fzanneti/DIO-linux-fundamentals-training?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/fzanneti/DIO-linux-fundamentals-training?style=social)
![Plataforma](https://img.shields.io/badge/Powered%20by-DIO.io-red?logo=data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjZmZmIiB2aWV3Qm94PSIwIDAgMzIgMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTYuNzEgMy4yNWMtMi44OCAxLjQxLTUuMDcgNC4yMy01LjA3IDcuNzYgMCAzLjU4IDIuMjggNi43IDUuMzMgOC4xNSAxLjgzLS42MiAyLjQtMi4yNiAyLjQtMy44MSAwLS4yMy0uMDItLjQ1LS4wNS0uNjZBLjQ0LjQ0IDAgMDExMC4xIDExYy4yNC0uNzUuMTEtMS41My0uMy0yLjIyQzguOTIgNy45NiA3LjMzIDcuNSA1Ljc0IDcuNjZhNS41NSA1LjU1IDAgM)
![Autor](https://img.shields.io/badge/Autor-fzanneti-blue?style=flat-square&logo=github)

Gerenciar discos e partições no Linux é essencial para organizar o armazenamento, montar volumes e lidar com dispositivos físicos ou virtuais. Neste material, veremos como reconhecer, formatar e montar discos manual e automaticamente.

---

## Discos, Sistemas de Arquivos e Partições

**Disco:**

É o dispositivo físico de armazenamento (HD, SSD, etc.). No Linux, os discos são representados como:

```

/dev/sda   → Disco principal
/dev/sdb   → Segundo disco

```

**Partição:**

Divisão lógica de um disco físico. Exemplo:

```

/dev/sda1 → Primeira partição do disco sda
/dev/sdb2 → Segunda partição do disco sdb

```

**Sistema de Arquivos:**

Define como os dados são organizados no disco. Exemplos:

- `ext4` – padrão no Linux
- `xfs` – usado em servidores e RHEL
- `ntfs` – usado no Windows

---

**Adicionando um Novo Disco:**

Se estiver usando uma **máquina virtual**, você pode adicionar um novo disco no VirtualBox ou na AWS, e o sistema o reconhecerá como `/dev/sdb`, `/dev/sdc`, etc.

---

**Verificar discos conectados:**

```bash

lsblk

```

**Ver detalhes de disco:**

```bash

sudo fdisk -l

```

**Exemplo de saída do `lsblk`:**

```

NAME   MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
sda      8:0    0  40G  0 disk 
└─sda1   8:1    0  40G  0 part /
sdb      8:16   0  10G  0 disk 

```

---

### Particionando e Formatando Discos via Terminal

**Iniciar particionamento com `fdisk`:**

```bash

sudo fdisk /dev/sdb

```

**Comandos dentro do `fdisk`:**

* `n` – nova partição
* `p` – partição primária
* `w` – salva as alterações
* `q` – sair sem salvar

Após criar a partição, você verá algo como:

```

/dev/sdb1

```

**Formatar partição:**

```bash

sudo mkfs.ext4 /dev/sdb1

```

> 💡 Também pode formatar com outros sistemas de arquivos:

```bash

sudo mkfs.xfs /dev/sdb1
sudo mkfs.ntfs /dev/sdb1

```

---

### Montando e Desmontando Discos

**Criar ponto de montagem:**

```bash

sudo mkdir /mnt/novodisco

```

**Montar disco:**

```bash

sudo mount /dev/sdb1 /mnt/novodisco

```

**Verificar se foi montado:**

```bash

df -h

```

**Desmontar disco:**

```bash

sudo umount /mnt/novodisco

```

> É necessário desmontar o disco antes de removê-lo ou editar partições.

---

### Montando Discos Automaticamente

Para montar um disco automaticamente na inicialização do sistema, usamos o arquivo `/etc/fstab`.

**Ver UUID da partição:**

```bash

sudo blkid

```

**Editar o `/etc/fstab`:**

```bash

sudo nano /etc/fstab

```

**Adicionar linha ao final do arquivo:**

```fstab

UUID=seu-uuid-aqui  /mnt/novodisco  ext4  defaults  0  2

```

**Exemplo:**

```fstab

UUID=1234-ABCD  /mnt/novodisco  ext4  defaults  0  2

```

**Testar montagem sem reiniciar:**

```bash

sudo mount -a

```

Se não houver erro, está tudo certo.

---

### Conclusão

Você agora conhece os principais comandos e procedimentos para:

* Reconhecer discos e partições
* Criar partições via terminal
* Formatar e montar discos
* Configurar montagem automática via `/etc/fstab`

Essas ações são especialmente úteis em servidores, ambientes de nuvem e sistemas multiusuário.

---

### Links de Estudo Recomendados

🔗[Comando lsblk - Linuxize](https://linuxize.com/post/how-to-use-lsblk-command/)     
🔗[Gerenciamento de Discos no Ubuntu](https://help.ubuntu.com/community/InstallingANewHardDrive)    
🔗[Como usar o fstab - DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-use-the-fstab-file-on-linux)   

---

### Certificado

<img src="https://github.com/fzanneti/DIO-linux-fundamentals-training/blob/main/Assets/images/certificados/9-gerenciamento-de-pacotes-Linux.jpg" alt="Certificado" width="600px">

---

##### ✍️ Seção criada por: *Fabio Zanneti* 🎯 Curso: **Formação Linux Fundamentals**
[![GitHub](https://img.shields.io/badge/GitHub-fzanneti-181717?style=flat&logo=github)](https://github.com/fzanneti)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-fzanneti-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/fzanneti)