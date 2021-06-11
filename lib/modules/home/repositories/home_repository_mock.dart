import 'package:split_it/modules/home/models/dashboard_model.dart';
import 'package:split_it/modules/home/repositories/home_repository.dart';
import 'package:split_it/shared/models/event_model.dart';

class HomeRepositoryMock extends HomeRepository {
  @override
  Future<DashboardModel> getDashborad() async {
    await Future.delayed(Duration(seconds: 2));
    return DashboardModel(send: 100, receive: 500);
  }

  @override
  Future<List<EventModel>> getEvents() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      EventModel(
          title: 'Churrasco', created: DateTime.now(), value: 400, people: 6),
      EventModel(
          title: 'Concurso', created: DateTime.now(), value: -200, people: 1),
      EventModel(
          title: 'Bitcoin', created: DateTime.now(), value: 500, people: 1),
      EventModel(title: 'Pizza', created: DateTime.now(), value: 60, people: 3),
      EventModel(
          title: 'Supermercado',
          created: DateTime.now(),
          value: 100,
          people: 2),
      EventModel(
          title: 'Conta de Luz',
          created: DateTime.now(),
          value: -180,
          people: 2),
      EventModel(
          title: 'Conta de Internet',
          created: DateTime.now(),
          value: -100,
          people: 2),
    ];
  }
}
