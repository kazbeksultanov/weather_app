import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../../core/alice_core.dart';
import '../../model/alice_http_call.dart';
import '../../utils/alice_constants.dart';

class AliceTimeStatsScreen extends StatelessWidget {
  final AliceCore aliceCore;

  const AliceTimeStatsScreen(this.aliceCore);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: aliceCore.directionality ?? Directionality.of(context),
      child: Theme(
        data: ThemeData(
          brightness: aliceCore.brightness,
          colorScheme: ColorScheme.light(secondary: AliceConstants.lightRed),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Time stats'),
          ),
          body: Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: _buildMainListWidgets(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildMainListWidgets() {
    final apiSet = calls.map((e) => e.endpoint).toSet();
    final apiMap = <String, List<AliceHttpCall>>{};

    for (final api in apiSet) {
      apiMap.addAll({api: calls.where((e) => e.endpoint == api).toList()});
    }
    final apiMapSorted = apiMap.entries.sorted((a, b) => a.key.compareTo(b.key)).toList();
    return [
      if (calls.isNotEmpty) _getRow('Api url:', calls.first.server),
      _buildDivider(),
      for (int i = 0; i < apiMapSorted.length; i++) _TimeStatItem(apiMapSorted[i]),
    ];
  }

  Widget _getRow(String label, String value) {
    return Row(
      children: <Widget>[
        Text(
          label,
          style: _getLabelTextStyle(),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
        ),
        Text(
          value,
          style: _getValueTextStyle(),
        )
      ],
    );
  }

  // TextStyle _getLabelTextStyle() {
  //   return const TextStyle(fontSize: 16);
  // }

  int _getTotalRequests() {
    return calls.length;
  }

  int _getSuccessRequests() => calls
      .where(
        (call) =>
            call.response != null && call.response!.status! >= 200 && call.response!.status! < 300,
      )
      .toList()
      .length;

  int _getRedirectionRequests() => calls
      .where(
        (call) =>
            call.response != null && call.response!.status! >= 300 && call.response!.status! < 400,
      )
      .toList()
      .length;

  int _getErrorRequests() => calls
      .where(
        (call) =>
            call.response != null && call.response!.status! >= 400 && call.response!.status! < 600,
      )
      .toList()
      .length;

  int _getPendingRequests() => calls.where((call) => call.loading).toList().length;

  int _getBytesSent() {
    int bytes = 0;
    for (final call in calls) {
      bytes += call.request!.size;
    }
    return bytes;
  }

  int _getBytesReceived() {
    int bytes = 0;
    for (final call in calls) {
      if (call.response != null) {
        bytes += call.response!.size;
      }
    }
    return bytes;
  }

  int _getAverageRequestTime() {
    int requestTimeSum = 0;
    int requestsWithDurationCount = 0;
    for (final call in calls) {
      if (call.duration != 0) {
        requestTimeSum = call.duration;
        requestsWithDurationCount++;
      }
    }
    if (requestTimeSum == 0) {
      return 0;
    }
    return requestTimeSum ~/ requestsWithDurationCount;
  }

  int _getMaxRequestTime() {
    int maxRequestTime = 0;
    for (final call in calls) {
      if (call.duration > maxRequestTime) {
        maxRequestTime = call.duration;
      }
    }
    return maxRequestTime;
  }

  int _getMinRequestTime() {
    int minRequestTime = 10000000;
    if (calls.isEmpty) {
      minRequestTime = 0;
    } else {
      for (final call in calls) {
        if (call.duration != 0 && call.duration < minRequestTime) {
          minRequestTime = call.duration;
        }
      }
    }
    return minRequestTime;
  }

  int _getRequests(String requestType) =>
      calls.where((call) => call.method == requestType).toList().length;

  int _getSecuredRequests() => calls.where((call) => call.secure).toList().length;

  int _getUnsecuredRequests() => calls.where((call) => !call.secure).toList().length;

  List<AliceHttpCall> get calls => aliceCore.callsSubject.value;
}

TextStyle _getLabelTextStyle() {
  return const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
}

TextStyle _getValueTextStyle() {
  return const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
}

class _TimeStatItem extends StatelessWidget {
  final MapEntry<String, List<AliceHttpCall>> item;

  const _TimeStatItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avgTime = item.value.map((e) => e.duration).reduce((v, e) => v + e) / item.value.length;

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.key, style: _getValueTextStyle()),
                  Text('Avg: ${avgTime.round()} ms'),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 130,
              decoration: const BoxDecoration(border: Border(left: BorderSide())),
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < item.value.length; i++)
                    Text('${i + 1} - ${item.value[i].duration} ms'),
                ],
              ),
            ),
          ],
        ),
        _buildDivider(),
      ],
    );
  }
}

Widget _buildDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Container(height: 1, color: AliceConstants.grey),
  );
}
