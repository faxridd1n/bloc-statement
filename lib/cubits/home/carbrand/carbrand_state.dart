//nb=

// import 'package:equatable/equ//atable.dart';
part of 'carbrand_bloc.dart';

class CarbrandState extends Equatable {
  final FormzSubmissionStatus getStatus;
  final List<CarbrandModel> carBrand;
  CarbrandState({
    this.carBrand = const<CarbrandModel>[],
    this.getStatus = FormzSubmissionStatus.failure,
  });

  CarbrandState copyWith({
    List<CarbrandModel>? carBrand,
    FormzSubmissionStatus? getStatus,
  }) {
    return CarbrandState(
      carBrand: carBrand ?? this.carBrand ,
      getStatus: getStatus ?? this.getStatus,
    );
  }

  @override
  List<Object?> get props => [carBrand,getStatus];
}
