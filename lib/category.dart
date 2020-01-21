import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Category extends StatelessWidget {
  // TODO: You'll need the name, color, and iconLocation from main.dart
  final String name;
  final IconData iconLocation;
  final ColorSwatch color;

  const Category(
      {Key key,
      @required this.name,
      @required this.iconLocation,
      @required this.color})
      : assert(name != null),
        assert(iconLocation != null),
        assert(color != null),
        super(key: key);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
        color: Colors.transparent,
        child: Container(
          height: 100,
          child: InkWell(
            splashColor: color,
            borderRadius: BorderRadius.circular(50),
            highlightColor: color,
            onTap: () {
              print('Hello!');
            },
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(iconLocation)),
                  Center(
                      child: Text(name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24)))
                ]),
          ),
        ));
  }
}
