import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});
  final List<MenuRowData> firstMenuRow = [
    MenuRowData(
      Icons.favorite,
      'Избранное',
    ),
    MenuRowData(
      Icons.call,
      'Недавние звонки',
    ),
    MenuRowData(
      Icons.computer_outlined,
      'Устройства',
    ),
    MenuRowData(
      Icons.folder_outlined,
      'Папки с чатами',
    ),
  ];
  final List<MenuRowData> secondMenuRow = [
    MenuRowData(
      Icons.notification_add,
      'Уведомления и звуки',
    ),
    MenuRowData(
      Icons.privacy_tip,
      'Конфиденциальность',
    ),
    MenuRowData(
      Icons.date_range,
      'Данные и память',
    ),
    MenuRowData(
      Icons.brush,
      'Оформление',
    ),
    MenuRowData(
      Icons.language,
      'Язык',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text('Настройки'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const _UserInfo(),
            const SizedBox(height: 30),
            _MenuWidget(menuRow: firstMenuRow),
            const SizedBox(height: 30),
            _MenuWidget(menuRow: secondMenuRow),
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  MenuRowData(this.icon, this.text);

  final IconData icon;
  final String text;
}

class _MenuWidget extends StatelessWidget {
  const _MenuWidget({super.key, required this.menuRow});
  final List<MenuRowData> menuRow;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: menuRow
            .map((data) => _MenuWidgetRow(
                  data: data,
                ))
            .toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  const _MenuWidgetRow({super.key, required this.data});
  final MenuRowData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          const SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          const Icon(Icons.chevron_right_sharp),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: const [
          SizedBox(height: 30),
          _AvatarWidget(),
          SizedBox(height: 30),
          _UserNameWidject(),
          SizedBox(height: 10),
          _UserPhoneWidget(),
          SizedBox(height: 10),
          _UserNickNameWidget(),
        ],
      ),
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@JonFir',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17,
      ),
    );
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+798233344446',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}

class _UserNameWidject extends StatelessWidget {
  const _UserNameWidject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Ivan <JonFir> Elchev',
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}
