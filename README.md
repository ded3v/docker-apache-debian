# Projeto Docker Apache

Projeto simples desenvolvido para executar uma aplicação web utilizando
Docker, Debian e Apache.

## Estrutura

- `meu_site.tar`: arquivos da aplicação web compactados.
- `Dockerfile`: instruções utilizadas para construir a imagem Docker.

## Build

```bash
docker build -t meu-site-apache:1.0 .
