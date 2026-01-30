import 'package:flutter/material.dart';
import '../viewmodels/task_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late TaskViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = TaskViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lume Pocket'),
      ),
      body: ListView.builder(
        itemCount: _viewModel.tasks.length,
        itemBuilder: (context, index) {
          final task = _viewModel.tasks[index];
          return ListTile(
            title: Text(task.title),
            subtitle: Text(task.description),
          );
        },
      ),
    );
  }
}