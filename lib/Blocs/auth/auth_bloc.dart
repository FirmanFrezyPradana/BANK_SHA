import 'package:bank_sha/Models/signUp_Form_Model.dart';
import 'package:bank_sha/Services/auth_service.dart';
import 'package:bank_sha/Ui/Pages/signUpSetKtpPage.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is AuthCheckEmail) {
        try {
          emit(AuthLoading());
          final res = await AuthService().checkEmail(event.email);

          if (res == false) {
            emit(AuthCheckEmailSucces());
          } else {
            emit(const AuthFailed('Email Sudah Terpakai'));
          }
        } catch (e) {
          emit(AuthFailed(e.toString()));
        }
      }
    });
  }
}
