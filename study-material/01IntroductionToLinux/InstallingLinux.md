# 🐧 Instalando o Linux

Neste documento, vamos abordar as formas mais comuns de **instalar e executar o Linux** para fins de aprendizado e testes. Inclui instalação via máquina virtual local, uso da nuvem (AWS), e a ferramenta WSL para ambientes Windows.

---

### 📦 Distribuições Linux Utilizadas no Curso

Durante a formação, será usada principalmente a distribuição:

- **Ubuntu** (versão Desktop ou Server, dependendo da aula)

O **Ubuntu** é uma das distribuições Linux mais populares, fácil de usar e com ampla documentação.

Outras distribuições Linux populares:
- Fedora
- Debian
- CentOS
- Kali Linux
- Linux Mint

📚 [Lista de distribuições Linux - DistroWatch](https://distrowatch.com/)

---

### 💿 Realizando o Download do VirtualBox

O **Oracle VirtualBox** é um software gratuito que permite criar **máquinas virtuais** no seu computador.

### ▶️ Download:

- Acesse: [https://www.virtualbox.org/](https://www.virtualbox.org/)
- Escolha sua plataforma (Windows, macOS ou Linux)
- Faça o download do instalador

---

### ⚙️ Instalando o VirtualBox

1. Execute o instalador do VirtualBox.
2. Siga os passos da instalação padrão (Next > Next > Install).
3. Finalize a instalação e abra o programa.

💡 **Dica**: Certifique-se de habilitar a **virtualização** (VT-x ou AMD-V) no setup da BIOS/UEFI do seu computador, caso necessário.

---

## 🖥️ Criando Máquinas Virtuais (MV) no VirtualBox

### Passo a passo básico:

1. Abra o VirtualBox e clique em **"Nova"**.
2. Dê um nome para sua VM, ex: `UbuntuEstudo`.
3. Selecione **tipo: Linux** e **versão: Ubuntu (64-bit)**.
4. Defina a **memória RAM** (mínimo: 2048 MB).
5. Crie um disco rígido virtual (VDI) — recomendamos 20 GB.
6. Selecione "Dinamicamente alocado".
7. Finalize e clique em "Iniciar".
8. Ao iniciar, aponte para o **arquivo .iso do Ubuntu** que você baixou (veja abaixo).

📥 Baixe o Ubuntu:  
[https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop)

---

### 💿 Instalando o Ubuntu na Máquina Virtual

1. Ao iniciar a VM, selecione o ISO do Ubuntu.
2. Escolha a opção **"Try or Install Ubuntu"**.
3. Siga o processo de instalação:
   - Idioma e layout do teclado
   - Instalação normal ou mínima
   - Criar usuário e senha
   - Instalar atualizações (se quiser)
4. Aguarde a finalização e reinicie a máquina virtual.

---

### 🔌 Desligando a Máquina Virtual

Você pode:
- **Desligar normalmente** (pelo Ubuntu: `Desligar > Confirmar`)
- **Salvar o estado da máquina** no VirtualBox (mantém tudo como estava):
   - Clique no **X** da janela da VM > selecione **"Salvar o estado da máquina"**

---

### ☁️ Criando Conta na AWS (Amazon Web Services)

A Amazon oferece uma camada gratuita por 12 meses. Para usar:

1. Acesse: [https://aws.amazon.com/pt/free](https://aws.amazon.com/pt/free)
2. Crie uma conta com e-mail válido e cartão de crédito
3. Complete o processo de verificação
4. Acesse o **AWS Management Console**

---

### 🚀 AWS - Criando uma Máquina Virtual na Nuvem (EC2)

1. No console da AWS, vá para **EC2 > Instâncias**.
2. Clique em **"Launch Instance"**.
3. Escolha a imagem (ex: Ubuntu Server 22.04 LTS).
4. Selecione uma **instância t2.micro** (gratuita na camada Free Tier).
5. Configure disco e segurança conforme o padrão.
6. Gere ou selecione um par de chaves (para acessar via SSH).
7. Clique em **Launch Instance**.
8. Após criada, conecte-se à instância via SSH:

```bash

   ssh -i chave.pem ubuntu@<ip-da-instancia>

```

📚 [Guia EC2 - AWS Docs](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/EC2_GetStarted.html)

---

### 🧱 Utilizando o WSL (Windows Subsystem for Linux)

O **WSL** permite rodar distribuições Linux diretamente no Windows, sem precisar de VM.

### Passo a passo para instalar o Ubuntu via WSL:

1. Abra o **PowerShell como administrador**.
2. Execute:

```powershell

wsl --install
   
```

3. Reinicie o computador quando solicitado.
4. Após reiniciar, o Ubuntu será instalado automaticamente.
5. Crie um usuário e senha para o Ubuntu.
6. Pronto! Você pode usar o terminal Linux no Windows.

💡 Comando para abrir o Ubuntu:

```bash

wsl

```

📚 [Documentação WSL (Microsoft)](https://learn.microsoft.com/pt-br/windows/wsl/)

---

#### ✅ Conclusão

Você agora conhece diversas formas de instalar e utilizar o Linux:

* Localmente via VirtualBox
* Na nuvem via AWS
* No Windows com WSL

Cada método tem seus prós e contras, mas todos são excelentes para quem está começando e deseja praticar com segurança e flexibilidade.

---

### 🔗 Links de Estudo Recomendados

* [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads)
* [Download Ubuntu ISO](https://ubuntu.com/download/desktop)
* [Guia EC2 - AWS](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/EC2_GetStarted.html)
* [Guia WSL - Microsoft](https://learn.microsoft.com/pt-br/windows/wsl/)

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Projeto: Formação Linux Fundamentals