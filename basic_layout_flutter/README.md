# Row and Column classes

```
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        BlueBox(),
        BlueBox(),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
```

## Hasil
![Screenshot](../docs/01.jpg)

# Axis size and alignment

## 1. mainAxisSize property
```
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        BlueBox(),
        BlueBox(),
        BlueBox(),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

```

## Hasil
## 1. MainAxisSize.max
![Screenshot](../docs/size_max.jpg)
## 2. MainAxisSize.min
![Screenshot](../docs/size_min.jpg)

## mainAxisAlignment property
```
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BlueBox(),
        BlueBox(),
        BlueBox(),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
```
## Hasil
## 1. MainAxisAlignment.start
![Screenshot](../docs/align_start.jpg)
## 2. MainAxisAlignment.end
![Screenshot](../docs/align_end.jpg)
## 3. MainAxisAlignment.center
![Screenshot](../docs/align_center.jpg)
## 4. MainAxisAlignment.spaceBetween
![Screenshot](../docs/align_spaceBetween.jpg)
## 5. MainAxisAlignment.spaceEvenly
![Screenshot](../docs/align_spaceEvenly.jpg)

## crossAxisAlignment property
```
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlueBox(),
        BiggerBlueBox(),
        BlueBox(),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
```
## Hasil
## 1. CrossAxisAlignment.start
![Screenshot](../docs/cross_start.jpg)
## 2. CrossAxisAlignment.end
![Screenshot](../docs/cross_end.jpg)
## 3. CrossAxisAlignment.center
![Screenshot](../docs/cross_enter.jpg)
## 4. CrossAxisAlignment.stretch
![Screenshot](../docs/cross_stretch.jpg)

# Flexible widget
```
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: BlueBox(),
        ),
        Flexible(
          fit: FlexFit.loose,
          flex: 1,
          child: BlueBox(),
        ),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
```

## Hasil
## 1. FlexFit.loose
![Screenshot](../docs/flexfit_loose.jpg)
## 2. FlexFit.tight
![Screenshot](../docs/flexfit_tight.jpg)
## 3. FlexFit.tight with flex:2
![Screenshot](../docs/flexfit_tight_with%20flex%202.jpg)

# Expanded widget
Wrap widget BlueBox kedua dalam expanded widget.
```
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        Expanded(
          child: BlueBox(),
        ),
        BlueBox(),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,-
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
```
## Hasil
![Screenshot](../docs/expanded_widget.jpg)

# SizedBox widget
Menambahkan Widget SizeBox pada method build(). Di sini kita dapat mengubah ukuran widget pada parameter width.
```
 Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        SizedBox(
          width: 100,
          child: BlueBox(),
        ),
        BlueBox(),
      ],
    );
  }
```
## Hasil
![Screenshot](../docs/sized_box.jpg)

## Add another SizedBox widget (25 logical pixels wide) between the second and third BlueBox widgets
## Hasil
![Screenshot](../docs/add%20sizebox%20wid%2025.jpg)

## Add another Spacer Widget

```
Widget build(BuildContext context) {
    return Row(
      children: [
        BlueBox(),
        const Spacer(flex: 1),
        BlueBox(),
        BlueBox(),
      ],
    );
  }
```
## Hasil
![Screenshot](../docs/spacer_widget.jpg)

# Text widget
```
Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Futura',
            color: Colors.blue,
          ),
        ),
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'Futura',
            color: Colors.green,
          ),
        ),
        Text(
          'Hey!',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Futura',
            color: Colors.red,
          ),
        ),
      ],
    );
  }
```
## Hasil
![Screenshot](../docs/text_widget.jpg)

## Mengubah CrossAxisAlignment.center ke CrossAxisAlignment.baseline
![Screenshot](../docs/text_widget_baseline.jpg)

# Icon widget
```
 Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.blue,
        ),
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.red,
        ),
      ],
    );
  }
```
## Hasil
![Screenshot](../docs/icon_widget.jpg)

## Menambahkan satu icon dengan lebar 50 dan berwarna amber

```
Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.blue,
        ),
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.red,
        ),
        Icon(
          Icons.widgets,
          size: 50,
          color: Colors.amber,
        ),
      ],
    );
  }
```

## Hasil
![Screenshot](../docs/add%20icon%20amber%20color.jpg)

# Image widget

```
Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
            'https://upload.wikimedia.org/wikipedia/id/thumb/d/d8/Lambang_Partai_Demokrasi_Indonesia_Perjuangan.svg/270px-Lambang_Partai_Demokrasi_Indonesia_Perjuangan.svg.png'),
      ],
    );
  }
```

## Hasil
![Screenshot](../docs/image_widget.jpg)

