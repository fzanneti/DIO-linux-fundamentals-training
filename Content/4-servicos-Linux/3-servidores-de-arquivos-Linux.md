# Linux Fundamentals – DIO

# 4.3 - Serviços Linux - Servidor de Arquivos com SAMBA

![GitHub repo size](https://img.shields.io/github/repo-size/fzanneti/DIO-linux-fundamentals-training)
![GitHub forks](https://img.shields.io/github/forks/fzanneti/DIO-linux-fundamentals-training?style=social)
![GitHub Repo stars](https://img.shields.io/github/stars/fzanneti/DIO-linux-fundamentals-training?style=social)
![Plataforma](https://img.shields.io/badge/Powered%20by-DIO.io-red?logo=data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjZmZmIiB2aWV3Qm94PSIwIDAgMzIgMzIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTYuNzEgMy4yNWMtMi44OCAxLjQxLTUuMDcgNC4yMy01LjA3IDcuNzYgMCAzLjU4IDIuMjggNi43IDUuMzMgOC4xNSAxLjgzLS42MiAyLjQtMi4yNiAyLjQtMy44MSAwLS4yMy0uMDItLjQ1LS4wNS0uNjZBLjQ0LjQ0IDAgMDExMC4xIDExYy4yNC0uNzUuMTEtMS41My0uMy0yLjIyQzguOTIgNy45NiA3LjMzIDcuNSA1Ljc0IDcuNjZhNS41NSA1LjU1IDAgM)
![Autor](https://img.shields.io/badge/Autor-fzanneti-blue?style=flat-square&logo=github)

O **SAMBA** permite que um servidor Linux compartilhe arquivos e impressoras com máquinas **Windows** e **Linux**, usando o protocolo SMB/CIFS. É uma solução amplamente usada em ambientes domésticos e corporativos.

---

### Introdução ao Servidor de Arquivos

Um **servidor de arquivos** centraliza o armazenamento de dados e facilita o compartilhamento entre diferentes usuários e dispositivos. Com o SAMBA, você pode:

- Compartilhar pastas entre Linux e Windows
- Controlar permissões de acesso
- Criar usuários dedicados ao acesso compartilhado

---

### Instalação do SAMBA e Configuração Inicial

1. Instalando o SAMBA (Ubuntu/Debian):

```bash

sudo apt update
sudo apt install samba -y

```

2. Verificando a instalação:

```bash

smbd --version

```

---

3. Criando uma pasta para compartilhamento:

```bash

sudo mkdir -p /srv/samba/compartilhado
sudo chmod -R 777 /srv/samba/compartilhado

```

> Para um ambiente controlado, prefira permissões mais restritas com usuários/grupos específicos.

---

4. Editando o arquivo de configuração:

```bash

sudo nano /etc/samba/smb.conf

```

Adicione ao final do arquivo:

```ini

[Compartilhado]
   path = /srv/samba/compartilhado
   browseable = yes
   writable = yes
   guest ok = yes
   read only = no

```

> Isso cria um compartilhamento acessível a qualquer cliente da rede sem autenticação (modo "guest").

---

5. Reiniciando o serviço do SAMBA:

```bash

sudo systemctl restart smbd

```

Verifique se o serviço está ativo:

```bash

sudo systemctl status smbd

```

---

6. Criando um usuário para o SAMBA (opcional):

```bash

sudo adduser nomeusuario
sudo smbpasswd -a nomeusuario

```

Isso cria uma senha específica para acesso via SAMBA, diferente da senha de login do sistema.

---

### Configurando o Acesso via Máquina Cliente

**Acesso pelo Windows:**

1. Pressione `Win + R` e digite:

```

\\IP-do-servidor\Compartilhado

```

2. Pressione Enter.
   Se configurado para "guest ok", o acesso será direto.
   Se exigir autenticação, insira o usuário SAMBA criado anteriormente.

---

### Acesso pelo Linux:

**Monte o compartilhamento manualmente:**

```bash

sudo apt install cifs-utils
sudo mount -t cifs //IP-do-servidor/Compartilhado /mnt -o guest

```

**Se o compartilhamento exigir usuário/senha:**

```bash

sudo mount -t cifs //IP-do-servidor/Compartilhado /mnt -o username=nomeusuario,password=suasenha

```

---

### Dica Extra: Tornar Montagem Permanente (Linux)

**Adicione a entrada no `/etc/fstab`:**

```fstab

//IP-do-servidor/Compartilhado /mnt cifs username=nomeusuario,password=suasenha,iocharset=utf8,sec=ntlm 0 0

```

---

### Conclusão

**Agora você sabe como:**

* Instalar e configurar o SAMBA no Linux
* Compartilhar pastas na rede
* Acessar o compartilhamento por clientes Linux e Windows
* Criar usuários de acesso ao compartilhamento

Isso é essencial para redes locais, laboratórios, empresas e ambientes multiusuários.

---

### Links de Estudo Recomendados

🔗[Documentação oficial do SAMBA](https://www.samba.org/samba/docs/)      
🔗[Tutorial DigitalOcean – Samba no Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-samba-share-for-a-small-organization-on-ubuntu-20-04)     
🔗[Compartilhamento Linux ↔ Windows](https://wiki.debian.org/SambaServerSimple)    

---

### Certificado

<img src="https://github.com/fzanneti/DIO-linux-fundamentals-training/blob/main/Assets/images/certificados/13-servidores-de-arquivos-com-Linux.jpg" alt="Certificado" width="600px">

---

##### ✍️ Seção criada por: *Fabio Zanneti* 🎯 Curso: **Formação Linux Fundamentals**
[![GitHub](https://img.shields.io/badge/GitHub-fzanneti-181717?style=flat&logo=github)](https://github.com/fzanneti)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-fzanneti-0A66C2?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/fzanneti)