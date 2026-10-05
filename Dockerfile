# Usa o Debian Trixie como imagem base
FROM debian:trixie

# Atualiza os pacotes e instala o servidor Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Adiciona o site compactado.
# O ADD também consegue extrair automaticamente arquivos TAR locais.
ADD meu_site.tar /var/www/html/

# Informa que o Apache utiliza a porta 80
EXPOSE 80

# Mantém o Apache executando em primeiro plano dentro do container
CMD ["apachectl", "-D", "FOREGROUND"]