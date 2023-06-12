
abstract class RegisterState{}

class RegisterInit extends RegisterState{}

class RegisterLoading extends RegisterState{}

class RegisterError extends RegisterState{
  String msg;
  RegisterError(this.msg);
}

class RegisterSuccess extends RegisterState{

}