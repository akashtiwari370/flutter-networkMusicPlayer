import 'package:flutter/material.dart';

import './ui/music.dart';
import './ui/home.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  build(BuildContext context) {
    return music();
  }
}
