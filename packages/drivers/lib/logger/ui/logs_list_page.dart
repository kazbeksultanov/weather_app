import 'package:drivers/logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

LogsListBloc _bloc(BuildContext context) => BlocProvider.of(context);

class LoggerPage extends StatefulWidget {
  const LoggerPage({Key? key}) : super(key: key);

  @override
  State<LoggerPage> createState() => _LoggerPageState();
}

class _LoggerPageState extends State<LoggerPage> {
  final bloc = LogsListBloc(LogUseCaseImpl());

  @override
  void initState() {
    bloc.add(Load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder(
          bloc: bloc,
          builder: (context, state) {
            if (state is Loaded) {
              return _LoadedPage(state: state);
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}

class _LoadedPage extends StatelessWidget {
  const _LoadedPage({required this.state, Key? key}) : super(key: key);
  final Loaded state;

  @override
  Widget build(BuildContext context) {
    final bloc = _bloc(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logger page'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () => bloc.add(OnClearClick()),
                  child: const Text('clear'),
                ),
                PopupMenuItem(
                  onTap: () => bloc.add(OnShareClick()),
                  child: const Text('share'),
                ),
              ];
            },
          )
        ],
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: state.events.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final event = state.events[index];
          return LogCard(event);
        },
      ),
    );
  }
}

class LogCard extends StatelessWidget {
  const LogCard(this.log, {Key? key}) : super(key: key);
  final LogEvent log;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LogInfoPage(log)));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            if (log.level.emoji.isNotEmpty) Text(log.level.emoji),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                log.title,
                style: TextStyle(color: log.level.color),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              DateFormat('HH:mm:ss').format(log.dateTime),
              style: TextStyle(
                color: log.level.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
