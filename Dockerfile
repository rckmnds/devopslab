#Use uma Image Oficial do Python
FROM python:rc-slim

#Definindo o diretório onde a aplicação será armazenada
WORKDIR /app

# Copiar os arquivos da pata local para dentro do container
COPY . /app

#Instalar as dependências de Python de acordo com o que foi desenvolvido
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#Garante que será iniciada a aplicação
CMD ["gunicord", "app:app"]