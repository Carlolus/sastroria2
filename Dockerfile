# Usa la imagen oficial de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios para instalar dependencias
COPY package.json package-lock.json ./

# Instala las dependencias
RUN npm install

# Copia todo el código fuente al contenedor
COPY . .

# Expone el puerto en el que correrá la API
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "src/app.js"]