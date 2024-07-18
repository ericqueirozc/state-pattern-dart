
Estudo sobre o padrão de projeto State implementado usando Dart.
referência: https://refactoring.guru/design-patterns/state

# Padrão de Projeto: State

O padrão State é classificado como [Padrão de projeto comportamental]([https://www.notion.so/Padr-o-de-projeto-comportamental-16015f0ead8143a48c26b630c170f95a?pvs=21](https://refactoring.guru/design-patterns/behavioral-patterns)) e está fortemente relacionado com a [Maquina de estado finito](https://en.wikipedia.org/wiki/Finite-state_machine).

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


## Exemplo

Pressionar o botão principal de um iPhone SE quando o estado do celular é “bloqueado” serve para abrir a tela de desbloqueio, caso o celular já esteja destravado o usuário é levado para a tela inicia do sistema operacional.

## Execução do código presente no main.dart
<img width="612" alt="Captura de Tela 2024-07-18 às 19 30 22" src="https://github.com/user-attachments/assets/e7d36d9c-cc08-49e1-8258-d589d3c1db27">


