import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repostory/API/api_main.dart';
import '../Repostory/ModelClass/EBookModel.dart';

part 'ebook_event.dart';
part 'ebook_state.dart';

class EbookBloc extends Bloc<EbookEvent, EbookState> {
  late List<EBookModel> eBookModel;
  EbookApi ebookApi=EbookApi();
  EbookBloc() : super(EbookInitial()) {
    on<EbookEvent>((event, emit) async{
      emit(EbookBlocLoading());
      try{
        eBookModel=await ebookApi.getEbook();
        emit(EbookBlocLoaded());
      }
          catch(a){
        emit(EbookBlocError());
          }
      // TODO: implement event handler
    });
  }
}
