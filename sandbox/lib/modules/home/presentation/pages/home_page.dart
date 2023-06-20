import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sandbox/modules/core/ui/widgets/app_button_widget.dart';
import 'package:sandbox/modules/core/ui/widgets/app_scaffold_widget.dart';
import 'package:sandbox/modules/core/ui/widgets/app_text_field_widget.dart';
import 'package:sandbox/modules/home/presentation/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeController _controller;

  @override
  void initState() {
    _controller = Modular.get<HomeController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffoldWidget(
      onTap: () {
        _controller.validateForm();
      },
      showLeading: false,
      title: 'xalala',
      body: Form(
        key: _controller.formKey,
        child: Column(
          children: [
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const Text('data'),
            const SizedBox(height: 80),
            AppTextFieldWidget(
              controller: _controller.textEditingController,
              label: 'qwe4tt',
              onChanged: (value) => print('value $value'),
              onFieldSubmitted: (value) {
                _controller.validateForm();
              },
            ),
          ],
        ),
      ),
      bottom: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: AppButtonWidget(
              onPressed: () {
                print('xalala');
              },
              label: 'xururu',
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: AppButtonWidget(
              onPressed: () {
                print('xalala');
              },
              label: 'xalala',
            ),
          ),
        ],
      ),
    );
  }
}
