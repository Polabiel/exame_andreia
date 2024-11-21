# ExameAndreia

Este é um projeto Flutter chamado **ExameAndreia**, criado como parte de uma avaliação. O objetivo principal deste projeto é implementar uma aplicação que inclui um componente de slider de imagens, juntamente com outras funcionalidades, como a exibição de texto e descrição para cada imagem.

## Objetivo

O projeto visa demonstrar a capacidade de criar interfaces interativas e reutilizáveis utilizando Flutter, bem como integrar componentes como **ImageSlider**, que pode ser usado para exibir uma coleção de imagens dinâmicas com textos e descrições.

## Componentes

### ImageSlider

O componente `ImageSlider` é um widget **stateful** que exibe uma imagem com texto e descrição. Ele é projetado para carregar imagens da web utilizando a classe `NetworkImage`.

#### Propriedades

- `text`: Uma string que representa o texto a ser exibido junto à imagem.
- `description`: Uma string que fornece uma descrição mais detalhada sobre a imagem.
- `src`: Um objeto `NetworkImage` que representa a URL da imagem a ser carregada.

#### Exemplo de Uso

Aqui está um exemplo de como usar o componente `ImageSlider`:

```dart
ImageSlider(
  text: 'Exemplo de Texto',
  description: 'Esta é uma descrição de exemplo.',
  src: NetworkImage('https://exemplo.com/imagem.jpg'),
)
```
Além do `ImageScroll` seguindo o exemplo abaixo:

```dart
ImageScroll(
  text: 'Exemplo de Texto',
  description: 'Esta é uma descrição de exemplo.',
  src: NetworkImage('https://exemplo.com/imagem.jpg'),
)
```

## Estrutura do Projeto

- **lib/**: Contém o código-fonte principal da aplicação.
- **components/**: Contém componentes reutilizáveis, como `ImageSlider`.
- **icones.dart**: Arquivo que contém ícones utilizados no projeto.
- **imageSlider.dart**: Arquivo que contém a implementação do componente `ImageSlider`.
- **imageScroll.dart**: Arquivo que contém a implementação do componente `ImageScroll`.

## Funcionalidades

Além do componente **ImageSlider**, o projeto inclui:

- Carregamento dinâmico de imagens da web.
- Exibição de texto e descrição personalizável para cada imagem.
- Estrutura de código modular, com componentes reutilizáveis.

## Como Executar o Projeto

1. Clone o repositório:
   ```bash
   git clone https://github.com/Polabiel/exame_andreia.git
   ```
   
2. Acesse o diretório do projeto:
   ```bash
   cd exame_andreia
   ```

3. Instale as dependências:
   ```bash
   flutter pub get
   ```

4. Execute o projeto:
   ```bash
   flutter run
   ```

## Contribuições

Sinta-se à vontade para abrir issues ou enviar pull requests para melhorias ou correções!

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).
