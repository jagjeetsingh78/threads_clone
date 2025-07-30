import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {

  static final supabaseUrl = dotenv.env["SUPABASE_URL"]!;

  static final supabasekey = dotenv.env["SUPABASE_ANON_KEY"]!;


}