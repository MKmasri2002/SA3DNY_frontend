import 'package:flutter/material.dart';

class ServiceInfo extends StatelessWidget {
  ServiceInfo({super.key});

  // قائمة الخيارات
  final List<String> cities = [
    "Electrical machines",
    "electrical wiring",
    "sanitary drainage installations",
    "water supply installations",
    "painting",
    "cleaning",
  ];

  // المتغير اللي بيخزن القيمة المختارة
  final ValueNotifier<String?> selectedCity = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DropDown Example")),
      body: Center(
        child: ValueListenableBuilder<String?>(
          valueListenable: selectedCity,
          builder: (context, value, _) {
            return DropdownButton<String>(
              hint: const Text("select service type"),
              value: value,
              isExpanded: true,
              items: cities.map((city) {
                return DropdownMenuItem(value: city, child: Text(city));
              }).toList(),
              onChanged: (newValue) {
                selectedCity.value = newValue;
              },
            );
          },
        ),
      ),
    );
  }
}
