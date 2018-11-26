# Utilizando como base da nossa imagem a imagem oficial do Python
FROM python:3.6

# Expondo a porta 5000 a qual nossa aplicação Flask irá ouvir
EXPOSE 5000

# Diretório de trabalho onde os comandos serão executados dentro do container
WORKDIR /srv/app

# Copiando o arquivo com as dependências do projeto e fazendo a instalação utilizando o "pip"
COPY requirements.txt /srv/app
RUN pip install -r requirements.txt

# Executando a aplicação Flask.
# O CMD é executado logo após o entrypoint.
COPY app.py /srv/app
CMD python app.py
