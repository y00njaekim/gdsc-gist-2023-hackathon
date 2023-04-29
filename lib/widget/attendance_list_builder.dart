import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef ItemWidgetBuilder<T> = Widget Function(BuildContext context, T item);

class AttendanceListItemsBuilder<T> extends ConsumerWidget {
  const AttendanceListItemsBuilder({
    Key? key,
    required this.data,
    required this.itemBuilder,
  }) : super(key: key);
  final AsyncValue<List<T>> data;
  final ItemWidgetBuilder<T> itemBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return data.when(
      data: (items) =>
          items.isNotEmpty ? _buildList(items) : const EmptyContent(),
      loading: () => Container(
        color: Colors.white,
      ),
      error: (_, __) => const ErrorContent(
        title: '오류가 발생하였습니다',
        message: '전체 미션을 받아올 수 없습니다',
      ),
    );
  }

  Widget _buildList(List<T> items) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      separatorBuilder: (context, index) => const Divider(
        height: 10,
        color: Colors.transparent,
      ),
      itemBuilder: (context, index) {
        return itemBuilder(context, items[index]);
      },
    );
  }
}

class EmptyContent extends StatelessWidget {
  const EmptyContent({
    Key? key,
    this.title = '목록이 비어있습니다',
    this.message = '새로운 미션을 추가해주세요',
  }) : super(key: key);
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: 240,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class ErrorContent extends StatelessWidget {
  const ErrorContent({
    Key? key,
    this.title = '목록이 비어있습니다',
    this.message = '새로운 미션을 추가해주세요',
  }) : super(key: key);
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: 240,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
