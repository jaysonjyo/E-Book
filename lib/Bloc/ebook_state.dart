part of 'ebook_bloc.dart';

@immutable
sealed class EbookState {}

final class EbookInitial extends EbookState {}
class EbookBlocLoading extends EbookState{}
class EbookBlocLoaded extends EbookState{}
class EbookBlocError extends EbookState{}