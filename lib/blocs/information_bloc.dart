import 'package:rxdart/rxdart.dart';
import 'bloc_provider.dart';
import '../models/data.dart';
import '../repository/custom.dart';

abstract class InformationEvent {}

class StartEvent extends InformationEvent {}

class AdminClick extends InformationEvent {}

class CorrectionsClick extends InformationEvent {}

class ServicesClick extends InformationEvent {}

class SocialMediaClick extends InformationEvent {}

class InformationBloc implements BlocBase {

  BehaviorSubject<List<Data>> _informationController =
      BehaviorSubject<List<Data>>();
  Observable<List<Data>> get $outInformation => _informationController.stream;
  Sink<List<Data>> get _inInformation => _informationController.sink;

  
  BehaviorSubject<InformationEvent> _eventController =
      BehaviorSubject<InformationEvent>();
  Sink<InformationEvent> get eventSink => _eventController.sink;

  InformationBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

    //event가 input으로 들어오면 output으로 state을 보여준다
  void _mapEventToState(InformationEvent event) {
    if (event is StartEvent){
      _start();
    }else if(event is AdminClick) {
      _admin();
    } else if (event is CorrectionsClick) {
      _correction();
    } else if (event is ServicesClick) {
      _services();
    } else if (event is SocialMediaClick) {
      _sns();
    }
  }

  void _start(){
    _inInformation.add(info_main);
  }

  void _admin(){
    _inInformation.add(info_admin);
  }

   void _correction(){
     _inInformation.add(info_correction);
  }

   void _services(){
     _inInformation.add(info_services);
  }

  void _sns(){
     _inInformation.add(info_sns);
  }

  void dispose() async {
    await _informationController.drain();
    _informationController.close();
  }
}