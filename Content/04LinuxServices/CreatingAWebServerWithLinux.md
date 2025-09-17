# 🌐 Criando um Servidor Web com Linux (Apache2)

Nesta seção, vamos entender o conceito de servidor web, instalar o **Apache2** em um sistema Linux e hospedar uma aplicação web básica para simular um ambiente de produção.

---

### 🧭 O que é um Servidor WEB?

Um **servidor web** é um software que entrega páginas e aplicações web ao navegador do usuário através de protocolos como o **HTTP** e o **HTTPS**.

### Funções principais:
- Receber requisições de navegadores (clientes)
- Retornar páginas HTML, CSS, JS, imagens ou aplicações completas
- Servir como base para aplicações em PHP, Python, Node.js, etc.

📦 O **Apache HTTP Server** é um dos servidores web mais populares e estáveis do mundo, muito usado em ambientes Linux.

---

## ⚙️ Instalando o Apache2

### Passo 1: Atualizar o sistema

```bash

sudo apt update && sudo apt upgrade -y

```

### Passo 2: Instalar o Apache2

```bash

sudo apt install apache2 -y

```

### Passo 3: Verificar se o serviço está ativo

```bash

sudo systemctl status apache2

```

Você deve ver algo como:

```

active (running)

```

### Passo 4: Testar no navegador

Abra o navegador e digite:

```

http://localhost

```

Ou, se estiver em uma máquina virtual ou servidor:

```

http://IP-da-maquina

```

Você verá a **página padrão do Apache2**.

---

### 📂 Estrutura padrão do Apache2 no Ubuntu

* Diretório raiz da web:

```bash

/var/www/html

```

* Arquivo principal da página:

```bash

/var/www/html/index.html

```

* Configuração principal:

```bash

/etc/apache2/apache2.conf

```

---

## 🚀 Executando Aplicações Web em um Servidor Linux

### 1. Criando um site HTML simples

Crie um novo arquivo no diretório padrão:

```bash

sudo nano /var/www/html/meusite.html

```

Cole o exemplo abaixo:

```html

<!DOCTYPE html>
<html>
    <head>
        <title>Meu Primeiro Site no Apache</title>
    </head>
    <body>
        <h1>Olá, Fabio!</h1>
        <p>Servidor Web Apache rodando no Linux com sucesso 🚀</p>
    </body>
</html>

```

Salve com `Ctrl + O`, depois `Enter` e saia com `Ctrl + X`.

### 2. Acessar no navegador

No navegador, digite:

```

http://localhost/meusite.html

```

---

### 3. Substituindo a página inicial

Você pode editar o arquivo padrão para personalizar a home do servidor:

```bash

sudo nano /var/www/html/index.html

```

Edite o conteúdo para o que quiser, salve e atualize o navegador.

---

### 4. Permissões (se necessário)

Se você tiver problemas para editar os arquivos:

```bash

sudo chown -R $USER:$USER /var/www/html

```

---

### 🧪 Testando com aplicação PHP (opcional)

Se quiser testar uma aplicação PHP simples:

```bash

sudo apt install php libapache2-mod-php -y

```

Crie o arquivo:

```bash

sudo nano /var/www/html/info.php

```

Conteúdo:

```php

<?php

phpinfo();

?>

```

Acesse:

```

http://localhost/info.php

```

---

#### ✅ Conclusão

Você agora consegue:

* Instalar e ativar um servidor Apache no Linux
* Entender a estrutura de arquivos do Apache
* Criar e hospedar páginas HTML simples
* Testar o funcionamento pelo navegador

Este é o primeiro passo para hospedar sites e sistemas em Linux, seja localmente, em nuvem ou VPS.

---

### 🔗 Links de Estudo Recomendados

* [Documentação oficial do Apache2](https://httpd.apache.org/docs/)
* [Apache no Ubuntu - DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-20-04-pt)
* [O que é um servidor web? - MDN](https://developer.mozilla.org/pt-BR/docs/Learn/Common_questions/Web_mechanics/What_is_a_web_server)

---

##### ✍️ Seção criada por: Fabio Zanneti 🎯 Projeto: Formação Linux Fundamentals