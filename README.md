# Lume Pocket

Aplicativo simples de gerenciamento de tarefas desenvolvido em Flutter como parte de um desafio técnico.

## Funcionalidades
- Exibição de lista de tarefas
- Adição de novas tarefas através de botão flutuante (FAB)
- Navegação para tela de detalhes da tarefa
- Gerenciamento de estado com ChangeNotifier
- Arquitetura MVVM

## Estrutura do Projeto
lib/
├── models/
│ └── task.dart
├── viewmodels/
│ └── task_viewmodel.dart
├── views/
│ ├── home_view.dart
│ └── task_detail_view.dart
└── main.dart

## Como executar o projeto
1. Instale o Flutter
2. Clone o repositório
3. Execute:
```bash
flutter pub get
flutter run
