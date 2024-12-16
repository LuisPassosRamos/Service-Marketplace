### Definição do Projeto

**Nome Provisório:** Marketplace de Serviços

**Objetivo Geral:**
Criar uma plataforma web que conecte prestadores de serviços (freelancers e empresas) a clientes que buscam serviços específicos. A plataforma permitirá negociação direta entre as partes e terá funcionalidades de avaliações e comentários para promover a transparência e a qualidade dos serviços.

---

### **Requisitos Funcionais**

1. **Cadastro e Autenticação de Usuários**
   - Cadastro de **clientes** e **prestadores de serviços**.
   - Login e autenticação usando credenciais (e-mail e senha).
   - Opção de recuperação de senha.

2. **Gerenciamento de Perfis**
   - Prestadores de serviço podem criar um perfil com:
     - Nome, descrição do serviço oferecido.
     - Contato (número de telefone, e-mail, links de redes sociais).
     - Valor estimado do serviço (fixo ou média de preços).
     - Categorias de serviços (ex: pintura, encanamento, marcenaria).
     - Fotos ou vídeos dos serviços já realizados.
   - Clientes podem gerenciar seus dados pessoais.

3. **Busca e Filtros de Serviços**
   - Busca por palavras-chave (ex: “pintor”, “encanador”).
   - Filtros:
     - Categoria de serviço.
     - Localização (cidade, região).
     - Preço estimado.
     - Avaliações (maior/melhor nota).
   - Exibição de resultados paginados.

4. **Detalhes do Serviço**
   - Visualização de detalhes do serviço oferecido:
     - Perfil do prestador.
     - Valor estimado.
     - Avaliações e comentários de outros clientes.
   - Botão para **mostrar interesse** e abrir canal de negociação privada.

5. **Negociação Privada**
   - Chat em tempo real entre cliente e prestador de serviço.
   - Confirmação de interesse no serviço (sem necessidade de pagamento via site).

6. **Sistema de Avaliação e Comentários**
   - Após a prestação do serviço, o cliente pode:
     - Dar uma nota (ex: de 1 a 5 estrelas).
     - Deixar um comentário.
   - Média das avaliações visível no perfil do prestador de serviço.

7. **Segurança e Validações**
   - Validação de dados ao cadastrar serviços ou realizar login.
   - Proteção contra SQL Injection e XSS.

8. **Administração da Plataforma**
   - Um usuário administrador pode:
     - Gerenciar perfis de prestadores e clientes (excluir, editar).
     - Moderação de comentários inapropriados.

---

### **Requisitos Não-Funcionais**

1. **Desempenho**:
   - Respostas rápidas para operações como busca e carregamento de perfis.
   - Suporte para, inicialmente, até 1000 usuários.

2. **Segurança**:
   - Criptografia de senhas (Bcrypt).
   - Implementação de autenticação JWT (Token).

3. **Escalabilidade**:
   - Estrutura modular para permitir expansão de funcionalidades.

4. **Usabilidade**:
   - Interface intuitiva e responsiva (adaptada para dispositivos móveis).

5. **Manutenção**:
   - Código limpo e documentado.
   - Testes unitários e de integração.

---

### **Tecnologias a Serem Utilizadas**

**Backend:**
- **Java** (Spring Boot): Framework principal para desenvolvimento.
- **Spring Data JPA**: Para persistência de dados.
- **MySQL**: Banco de dados relacional.
- **Flyway**: Versionamento do banco de dados.
- **Spring Security + JWT**: Autenticação e segurança.
- **Lombok**: Redução de boilerplate code.
- **Spring WebSocket**: Implementação de chat em tempo real.

**Frontend:**
- **ReactJS** ou **Thymeleaf**: Framework para interface do usuário.
- **Bootstrap** ou **Tailwind CSS**: Para estilização responsiva.

**Ferramentas Complementares:**
- **Docker**: Contenerização do projeto.
- **Postman**: Testes de API.
- **Swagger**: Documentação da API.
- **Git/GitHub**: Controle de versão.

---

### **Entidades Principais**

1. **Usuario**
   - id (Long)
   - nome (String)
   - email (String)
   - senha (String)
   - tipo (Enum: CLIENTE ou PRESTADOR)

2. **Servico**
   - id (Long)
   - titulo (String)
   - descricao (String)
   - categoria (String)
   - valorEstimado (Double)
   - prestador (Usuario)

3. **Avaliacao**
   - id (Long)
   - nota (Integer)
   - comentario (String)
   - servico (Servico)
   - cliente (Usuario)

4. **Mensagem** (para chat)
   - id (Long)
   - conteudo (String)
   - dataHora (Timestamp)
   - remetente (Usuario)
   - destinatario (Usuario)

---

### **Próximos Passos**
1. **Mapeamento de Funcionalidades**: Criar um backlog detalhado das tarefas.
2. **Criação do Banco de Dados**: Modelar o banco usando MySQL Workbench.
3. **Configuração Inicial do Projeto**: Criar um projeto Maven com as dependências principais.
4. **Desenvolvimento do Backend**: Criar endpoints e implementar as regras de negócio.
5. **Desenvolvimento do Frontend**: Construir as telas responsivas.
6. **Testes**: Realizar testes unitários e de integração.
