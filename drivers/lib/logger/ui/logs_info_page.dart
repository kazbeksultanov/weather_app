import 'package:drivers/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LogInfoPage extends StatefulWidget {
  const LogInfoPage(this.event, {Key? key}) : super(key: key);
  final LogEvent event;

  @override
  State<LogInfoPage> createState() => _LogInfoPageState();
}

class _LogInfoPageState extends State<LogInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.event.level.label)),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _InfoCard(title: 'Title', body: widget.event.title),
            _InfoCard(
                title: 'Date', body: DateFormat('HH:mm dd.MM.yyyy').format(widget.event.dateTime)),
            _InfoCard(
              title: 'Message',
              body: Logger.printer.dynamicStringFormat(widget.event.message),
            ),
            if (widget.event.stackTrace != null)
              _InfoCard(
                title: 'StackTrace',
                body: Logger.printer.dynamicStringFormat(widget.event.stackTrace),
              )
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.title, required this.body, Key? key}) : super(key: key);
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          title: Text(title),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SelectableText(body),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
