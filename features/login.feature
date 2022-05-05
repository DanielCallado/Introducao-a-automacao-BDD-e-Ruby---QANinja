#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

    Contexto: Página Principal
    Dado que eu acesso a página principal

    @logout
    Cenário: Usuário deve ser autorizado
        Quando eu faço login com "daniel@teste.com" e "123456"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Daniel"

        Esquema do Cenario: Tentativa de login

        Quando eu faço login com "<email>" e "<senha>"
        Então devo ver a seguinte mensagem "<alerta>"

        Exemplos:
        | email            | senha  | alerta                      |
        | daniel@teste.com | 654321 | Senha inválida.             |
        | papito@teste.com | 123456 | Usuário não cadastrado.     |
        | danielteste.net  | 123456 | Email incorreto ou ausente. |
        |                  | 123456 | Email incorreto ou ausente. |