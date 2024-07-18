
Estudo sobre o padrão de projeto State implementado usando Dart.

# Padrão de Projeto: State

O padrão State é classificado como [Padrão de projeto comportamental](https://www.notion.so/Padr-o-de-projeto-comportamental-16015f0ead8143a48c26b630c170f95a?pvs=21) e está fortemente relacionado com a [Maquina de estado finito](https://www.notion.so/Maquina-de-estado-finito-aafb5b2a59c14ff59377aa9662eef256?pvs=21).

Ele sugere que numa situação onde um objeto tenha comportamentos diferentes a depender de um estado interno e que a lógica de escolha (if ou switch-cases) esteja ficando muito complexa os estados sejam divididos em classes e o comportamento especifico de cada estado seja implementado dentro de sua própria classe.

## Configuração

Existem três papeis no que configuram o padrão State: contexto, estado e estado concreto.
O contexto é o objeto que possui uma referencia ao estado atual e os métodos.

O estado é uma classe abstrata onde estão definidos os métodos que tem um comportamento único para cada estado.

O estado concreto é uma implementação do estado, representa um dos possíveis estados do contexto e deve implementar o comportamento especifico daquele estado em particular, deixando assim o código modularizado facilitando a manutenção e o reaproveitamento.

## Como implementar

Dentro do contexto deve haver uma referencia a um objeto estado qual representaria o estado atual. Deve existir também um método setter para que seja possível fazer a troca desse estado. O método deve ser público. A troca de estado pode ser feita dentro de um estado, dentro do contexto, ou até mesmo pelo cliente.

Um estado pode conhecer os outros estados.

Nem todos os métodos do contexto devem ser implementados pelo estado, apenas os métodos que variam de estado para estado.

O cliente deve chamar o método do contexto. Se for um dos métodos do estado, o contexto apenas chama a referência do estado atual e utiliza o método dessa instância.

![State.drawio.svg](Padra%CC%83o%20de%20Projeto%20state%20bff55d619eee4ed5896c904e84d8ecbd/State.drawio.svg)

![State.drawio.svg](Padra%CC%83o%20de%20Projeto%20state%20bff55d619eee4ed5896c904e84d8ecbd/State.drawio%201.svg)

## Exemplo

Pressionar o botão principal de um iPhone SE quando o estado do celular é “bloqueado” serve para abrir a tela de desbloqueio, caso o celular já esteja destravado o usuário é levado para a tela inicia do sistema operacional.
