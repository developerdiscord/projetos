#aqui definimos o modulo e o nome do bot e o do é pra fazer uma determinada coisa end é fim
defmodule Elfe do
  #criando um application
  use Application
  #conexão com a discordia
  alias Alchemy.Client
  #importa embed pra usar aquelas coisas la
  alias Alchemy.Embed
  import Embed

  #definindo outro modulo e o nome sera commands sempre primeira letra com maiúscula
  defmodule Commands do 
    #falando que iremos usar o Cogs pra interagir com o usuario
    use Alchemy.Cogs

    #se a pessoa digita ping 
    Cogs.def ping do
      #bot responde com pong
      Cogs.say ("Pong!")
    end
    Cogs.def gif do
      %Embed{}
      |> title("elixir bot")
      |> description("Teste")
      |> image("http://sonyphotog.com/photos/globalmedicalco/25/123494.jpg")
      |> Embed.send
    end
    
    Cogs.def color do
      Cogs.say "Qual é sua cor Favorita ?"
      Cogs.wait_for :message, fn msg ->
        Cogs.say("#{msg.content} Nossa Caramba, Bela Decisão Parabéns #{msg.content} é linda")
      end
    end
  end

  #deixando o bot online com o token
  #vamos colocar online agr
  def start(type,args) do
    run = Client.start("NTYwMzc1MjU1MjQwMDE1OTQ5.D3zBug.mGIT99nAngxoUTZDaerO4-6xFiA")
    use Commands
    run
  end
end
#coded por Jean
