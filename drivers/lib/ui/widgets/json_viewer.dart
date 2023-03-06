// Taken from the library https://pub.dev/packages/flutter_json_viewer
// library flutter_json_widget;

import 'package:flutter/material.dart';

// ignore_for_file:avoid_annotating_with_dynamic

class JsonViewerCustom extends StatefulWidget {
  final dynamic jsonObj;
  final double arrowSize;
  final Color arrowColor;
  final Color labelColor;

  const JsonViewerCustom(
    this.jsonObj, {
    this.arrowSize = 14,
    this.arrowColor = Colors.grey,
    this.labelColor = Colors.blue,
  });

  @override
  _JsonViewerCustomState createState() => _JsonViewerCustomState();
}

class _JsonViewerCustomState extends State<JsonViewerCustom> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      alignment: Alignment.topCenter,
      duration: const Duration(milliseconds: 200),
      child: getContentWidget(widget.jsonObj),
    );
  }

  Widget getContentWidget(dynamic content) {
    if (content == null) {
      return const Text('{}');
    } else if (content is List) {
      return JsonArrayViewer(
        content,
        notRoot: false,
        labelColor: widget.labelColor,
        arrowColor: widget.arrowColor,
        arrowSize: widget.arrowSize,
      );
    } else {
      return JsonObjectViewer(
        content,
        notRoot: false,
        labelColor: widget.labelColor,
        arrowColor: widget.arrowColor,
        arrowSize: widget.arrowSize,
      );
    }
  }
}

class JsonObjectViewer extends StatefulWidget {
  final Map<String, dynamic> jsonObj;
  final bool notRoot;
  final double arrowSize;
  final Color arrowColor;
  final Color labelColor;

  const JsonObjectViewer(
    this.jsonObj, {
    required this.arrowSize,
    required this.arrowColor,
    required this.labelColor,
    this.notRoot = false,
  });

  @override
  JsonObjectViewerState createState() => JsonObjectViewerState();
}

class JsonObjectViewerState extends State<JsonObjectViewer> {
  Map<String, bool> openFlag = {};
  final bool defVal = false;

  // bool open = false;

  @override
  Widget build(BuildContext context) {
    // if (openFlag.isNotEmpty) {
    //   open = openFlag.entries.first.value;
    // }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: widget.notRoot ? const EdgeInsets.only(left: 14) : EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _getList(),
            ),
          ),
        ),
        // InkWell(
        //   onTap: () {
        //     open = !open;
        //     openFlag.forEach((key, value) {
        //       openFlag[key] = open;
        //     });
        //     setState(() {});
        //   },
        //   child: Icon(open ? Icons.arrow_drop_up : Icons.arrow_drop_down),
        // ),
      ],
    );
  }

  List<Widget> _getList() {
    final List<Widget> list = [];
    for (final MapEntry<String, dynamic> entry in widget.jsonObj.entries) {
      final bool ex = isExtensible(entry.value);
      final bool ink = isInkWell(entry.value);
      list.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (ex)
            (openFlag[entry.key] ?? defVal)
                ? Icon(Icons.arrow_drop_down, size: widget.arrowSize, color: widget.arrowColor)
                : Icon(Icons.arrow_right, size: widget.arrowSize, color: widget.arrowColor)
          else
            Icon(
              Icons.arrow_right,
              color: const Color.fromARGB(0, 0, 0, 0),
              size: widget.arrowSize,
            ),
          if (ex && ink)
            SelectableText(
              entry.key,
              style: TextStyle(color: widget.labelColor),
              onTap: () {
                setState(() {
                  openFlag[entry.key] = !(openFlag[entry.key] ?? defVal);
                });
              },
            )
          else
            SelectableText(
              entry.key,
              style: TextStyle(color: entry.value == null ? Colors.grey : widget.labelColor),
            ),
          const Text(
            ':',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(width: 3),
          getValueWidget(entry)
        ],
      ));
      list.add(const SizedBox(height: 4));
      if (openFlag[entry.key] ?? defVal) {
        list.add(getContentWidget(
          entry.value,
          arrowColor: widget.arrowColor,
          arrowSize: widget.arrowSize,
          labelColor: widget.labelColor,
        ));
      }
    }
    return list;
  }

  Widget getContentWidget(
    dynamic content, {
    required double arrowSize,
    required Color arrowColor,
    required Color labelColor,
  }) {
    if (content is List) {
      return JsonArrayViewer(
        content,
        notRoot: true,
        labelColor: labelColor,
        arrowSize: arrowSize,
        arrowColor: arrowColor,
      );
    } else {
      return JsonObjectViewer(
        content,
        notRoot: true,
        labelColor: labelColor,
        arrowSize: arrowSize,
        arrowColor: arrowColor,
      );
    }
  }

  static bool isInkWell(dynamic content) {
    if (content == null) {
      return false;
    } else if (content is int) {
      return false;
    } else if (content is String) {
      return false;
    } else if (content is bool) {
      return false;
    } else if (content is double) {
      return false;
    } else if (content is List) {
      if (content.isEmpty) {
        return false;
      } else {
        return true;
      }
    }
    return true;
  }

  Widget getValueWidget(MapEntry entry) {
    if (entry.value == null) {
      return const Expanded(
        child: SelectableText(
          'null',
          style: TextStyle(color: Colors.grey),
        ),
      );
    } else if (entry.value is int) {
      return Expanded(
        child: SelectableText(
          entry.value.toString(),
          style: const TextStyle(color: Colors.teal),
        ),
      );
    } else if (entry.value is String) {
      return Expanded(
        child: SelectableText(
          '"${entry.value}"',
          style: const TextStyle(color: Colors.redAccent),
        ),
      );
    } else if (entry.value is bool) {
      return Expanded(
        child: SelectableText(
          entry.value.toString(),
          style: const TextStyle(color: Colors.purple),
        ),
      );
    } else if (entry.value is double) {
      return Expanded(
        child: SelectableText(
          entry.value.toString(),
          style: const TextStyle(color: Colors.blueGrey),
        ),
      );
    } else if (entry.value is List) {
      if (entry.value.isEmpty) {
        return const SelectableText(
          'Array[0]',
          style: TextStyle(color: Colors.grey),
        );
      } else {
        return SelectableText(
          'Array<${getTypeName(entry.value[0])}>[${entry.value.length}]',
          style: const TextStyle(color: Colors.grey),
          onTap: () {
            setState(() {
              openFlag[entry.key] = !(openFlag[entry.key] ?? defVal);
            });
          },
        );
      }
    }
    return SelectableText(
      'Object',
      style: const TextStyle(color: Colors.grey),
      onTap: () {
        setState(() {
          openFlag[entry.key] = !(openFlag[entry.key] ?? defVal);
        });
      },
    );
  }

  static bool isExtensible(dynamic content) {
    if (content == null) {
      return false;
    } else if (content is int) {
      return false;
    } else if (content is String) {
      return false;
    } else if (content is bool) {
      return false;
    } else if (content is double) {
      return false;
    }
    return true;
  }

  static String getTypeName(dynamic content) {
    if (content is int) {
      return 'int';
    } else if (content is String) {
      return 'String';
    } else if (content is bool) {
      return 'bool';
    } else if (content is double) {
      return 'double';
    } else if (content is List) {
      return 'List';
    }
    return 'Object';
  }
}

class JsonArrayViewer extends StatefulWidget {
  final List<dynamic> jsonArray;
  final double arrowSize;
  final Color arrowColor;
  final Color labelColor;

  final bool notRoot;

  const JsonArrayViewer(
    this.jsonArray, {
    required this.labelColor,
    required this.arrowSize,
    required this.arrowColor,
    this.notRoot = false,
  });

  @override
  _JsonArrayViewerState createState() => _JsonArrayViewerState();
}

class _JsonArrayViewerState extends State<JsonArrayViewer> {
  late List<bool> openFlag;
  bool open = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.notRoot ? const EdgeInsets.only(left: 14) : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.grey),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _getList(),
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            child: InkWell(
              onTap: () {
                open = !open;
                openFlag = openFlag.map((e) => open).toList();
                setState(() {});
              },
              child: Icon(open ? Icons.arrow_drop_up : Icons.arrow_drop_down),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    openFlag = List.filled(widget.jsonArray.length, false);
    super.initState();
  }

  List<Widget> _getList() {
    final List<Widget> list = [];
    int i = 0;
    for (final content in widget.jsonArray) {
      final bool ex = JsonObjectViewerState.isExtensible(content);
      final bool ink = JsonObjectViewerState.isInkWell(content);
      list.add(
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (ex)
              (openFlag[i])
                  ? Icon(Icons.arrow_drop_down, size: widget.arrowSize, color: widget.arrowColor)
                  : Icon(Icons.arrow_right, size: widget.arrowSize, color: widget.arrowColor)
            else
              const Icon(
                Icons.arrow_right,
                color: Color.fromARGB(0, 0, 0, 0),
                size: 14,
              ),
            if (ex && ink)
              getInkWell(i)
            else
              Text(
                '[$i]',
                style: TextStyle(color: content == null ? Colors.grey : widget.labelColor),
              ),
            const Text(
              ':',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(width: 3),
            getValueWidget(content, i)
          ],
        ),
      );
      list.add(const SizedBox(height: 4));
      if (openFlag[i]) {
        list.add(JsonObjectViewerState().getContentWidget(
          content,
          arrowColor: widget.arrowColor,
          arrowSize: widget.arrowSize,
          labelColor: widget.labelColor,
        ));
      }
      i++;
    }
    return list;
  }

  Widget getInkWell(int index) {
    return SelectableText(
      '[$index]',
      style: TextStyle(color: widget.labelColor),
      onTap: () {
        setState(() {
          openFlag[index] = !openFlag[index];
        });
      },
    );
  }

  Widget getValueWidget(dynamic content, int index) {
    if (content == null) {
      return const Expanded(
        child: SelectableText(
          'undefined',
          style: TextStyle(color: Colors.grey),
        ),
      );
    } else if (content is int) {
      return Expanded(
        child: SelectableText(
          content.toString(),
          style: const TextStyle(color: Colors.teal),
        ),
      );
    } else if (content is String) {
      return Expanded(
        child: SelectableText(
          '"$content"',
          style: const TextStyle(color: Colors.redAccent),
        ),
      );
    } else if (content is bool) {
      return Expanded(
        child: SelectableText(
          content.toString(),
          style: const TextStyle(color: Colors.purple),
        ),
      );
    } else if (content is double) {
      return Expanded(
        child: SelectableText(
          content.toString(),
          style: const TextStyle(color: Colors.teal),
        ),
      );
    } else if (content is List) {
      if (content.isEmpty) {
        return const SelectableText(
          'Array[0]',
          style: TextStyle(color: Colors.grey),
        );
      } else {
        return SelectableText(
          'Array<${JsonObjectViewerState.getTypeName(content)}>[${content.length}]',
          style: const TextStyle(color: Colors.grey),
          onTap: () {
            setState(() {
              openFlag[index] = !openFlag[index];
            });
          },
        );
      }
    }
    return SelectableText(
      'Object',
      style: const TextStyle(color: Colors.grey),
      onTap: () {
        setState(() {
          openFlag[index] = !openFlag[index];
        });
      },
    );
  }
}
