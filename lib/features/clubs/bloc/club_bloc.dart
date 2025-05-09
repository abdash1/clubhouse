import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/club_repository.dart';
import '../../../core/models/club_model.dart';

// States
abstract class ClubState {}
class ClubInitial extends ClubState {}
class ClubLoading extends ClubState {}
class ClubLoaded extends ClubState {
  final List<Club> clubs;
  ClubLoaded(this.clubs);
}
class ClubError extends ClubState {
  final String message;
  ClubError(this.message);
}

// Cubit
class ClubCubit extends Cubit<ClubState> {
  final ClubRepository repository;

  ClubCubit(this.repository) : super(ClubInitial());

  Future<void> loadClubs() async {
    try {
      emit(ClubLoading());
      final clubs = await repository.fetchClubs();
      emit(ClubLoaded(clubs));
    } catch (e) {
      emit(ClubError(e.toString()));
    }
  }
}
