# 📡 Serviços Linux - Servidor de Arquivos com SAMBA

O **SAMBA** permite que um servidor Linux compartilhe arquivos e impressoras com máquinas **Windows** e **Linux**, usando o protocolo SMB/CIFS. É uma solução amplamente usada em ambientes domésticos e corporativos.

---

### 🧭 Introdução ao Servidor de Arquivos

Um **servidor de arquivos** centraliza o armazenamento de dados e facilita o compartilhamento entre diferentes usuários e dispositivos. Com o SAMBA, você pode:

- Compartilhar pastas entre Linux e Windows
- Controlar permissões de acesso
- Criar usuários dedicados ao acesso compartilhado

---

## ⚙️ Instalação do SAMBA e Configuração Inicial

### 📥 1. Instalando o SAMBA (Ubuntu/Debian):

```bash

sudo apt update
sudo apt install samba -y

````

### 🔍 2. Verificando a instalação:

```bash

smbd --version

```

---

### 📁 3. Criando uma pasta para compartilhamento:

```bash

sudo mkdir -p /srv/samba/compartilhado
sudo chmod -R 777 /srv/samba/compartilhado

```

> 🔐 Para um ambiente controlado, prefira permissões mais restritas com usuários/grupos específicos.

---

### 🛠️ 4. Editando o arquivo de configuração:

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

> 💡 Isso cria um compartilhamento acessível a qualquer cliente da rede sem autenticação (modo "guest").

---

### 🔁 5. Reiniciando o serviço do SAMBA:

```bash

sudo systemctl restart smbd

```

Verifique se o serviço está ativo:

```bash

sudo systemctl status smbd

```

---

### 👤 6. Criando um usuário para o SAMBA (opcional):

```bash

sudo adduser nomeusuario
sudo smbpasswd -a nomeusuario

```

Isso cria uma senha específica para acesso via SAMBA, diferente da senha de login do sistema.

---

## 🧩 Configurando o Acesso via Máquina Cliente

### 💻 Acesso pelo Windows:

1. Pressione `Win + R` e digite:

```

\\IP-do-servidor\Compartilhado

```

2. Pressione Enter.
   Se configurado para "guest ok", o acesso será direto.
   Se exigir autenticação, insira o usuário SAMBA criado anteriormente.

### 🐧 Acesso pelo Linux:

Monte o compartilhamento manualmente:

```bash

sudo apt install cifs-utils
sudo mount -t cifs //IP-do-servidor/Compartilhado /mnt -o guest

```

Se o compartilhamento exigir usuário/senha:

```bash

sudo mount -t cifs //IP-do-servidor/Compartilhado /mnt -o username=nomeusuario,password=suasenha

```

---

### 🧠 Dica Extra: Tornar Montagem Permanente (Linux)

Adicione a entrada no `/etc/fstab`:

```fstab

//IP-do-servidor/Compartilhado /mnt cifs username=nomeusuario,password=suasenha,iocharset=utf8,sec=ntlm 0 0

```

---

#### ✅ Conclusão

Agora você sabe como:

* Instalar e configurar o SAMBA no Linux
* Compartilhar pastas na rede
* Acessar o compartilhamento por clientes Linux e Windows
* Criar usuários de acesso ao compartilhamento

Isso é essencial para redes locais, laboratórios, empresas e ambientes multiusuários.

---

### 🔗 Links de Estudo Recomendados

* [Documentação oficial do SAMBA](https://www.samba.org/samba/docs/)
* [Tutorial DigitalOcean – Samba no Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-samba-share-for-a-small-organization-on-ubuntu-20-04)
* [Compartilhamento Linux ↔ Windows](https://wiki.debian.org/SambaServerSimple)

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Projeto: Formação Linux Fundamentals