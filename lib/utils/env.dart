import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {

  static final supabaseUrl = dotenv.env["supabaseurl"]!;

  static final supabasekey = dotenv.env["supabaskey"]!;


}