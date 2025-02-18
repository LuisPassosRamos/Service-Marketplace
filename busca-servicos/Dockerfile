# Usar uma imagem base do OpenJDK
FROM openjdk:17-jdk-slim

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar apenas o arquivo .jar para o container
COPY target/busca-servicos-0.0.1-SNAPSHOT.jar .

# Expor a porta padrão da aplicação
EXPOSE 8080

# Comando para executar o jar
ENTRYPOINT ["java", "-jar", "/app/busca-servicos-0.0.1-SNAPSHOT.jar"]
