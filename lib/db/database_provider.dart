import 'package:LerJson/model/passagem.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseProvider {
  static const String TABLE_PASSAGEM = "Passagem";
  static const String COLUMN_ID = "id";
  static const String COLUMN_PLACA = "Placa";
  static const String COLUMN_DATA = "Data";
  static const String COLUMN_HORA = "Hora";
  static const String COLUMN_EQUIPAMENTO = "Equipamento";
  static const String COLUMN_FAIXA = "Faixa";

  DatabaseProvider._();
  static final DatabaseProvider db = DatabaseProvider._();

  Database _database;

  Future<Database> get database async {
    print("Get do banco criado");

    if (_database != null) {
      return _database;
    }

    _database = await createDatabase();

    return _database;
  }

  Future<Database> createDatabase() async {
    String dbPath = await getDatabasesPath();

    return await openDatabase(
      join(dbPath, 'passagem.db'),
      version: 1,
      onCreate: (Database database, int version) async {
        print("Criando tabela");

        await database.execute(
          "CREATE TABLE $TABLE_PASSAGEM  ("
          "$COLUMN_ID INTEGER PRIMARY KEY,"
          "$COLUMN_PLACA TEXT,"
          "$COLUMN_DATA TEXT,"
          "$COLUMN_HORA TEXT,"
          "$COLUMN_EQUIPAMENTO TEXT,"
          "$COLUMN_FAIXA TEXT,"
          "UNIQUE($COLUMN_ID)"
          ")",
        );
      },
    );
  }

  Future<List<Passagem>> getPassagens() async {
    final db = await database;

    var passagens = await db.query(TABLE_PASSAGEM, columns: [
      COLUMN_ID,
      COLUMN_PLACA,
      COLUMN_DATA,
      COLUMN_HORA,
      COLUMN_EQUIPAMENTO,
      COLUMN_FAIXA
    ]);

    List<Passagem> listaPassagem = List<Passagem>();

    passagens.forEach((passagemSelecionada) {
      Passagem passagem = Passagem.fromJson(passagemSelecionada);

      listaPassagem.add(passagem);
    });

    return listaPassagem;
  }

  Future<Passagem> insert(Passagem passagem) async {
    final db = await database;
    passagem.id = await db.insert(TABLE_PASSAGEM, passagem.toJson());
    return passagem;
  }

  Future<int> delete(int id) async {
    final db = await database;

    return await db.delete(
      TABLE_PASSAGEM,
      where: "id = ?",
      whereArgs: [id],
    );
  }

  Future<int> update(Passagem passagem) async {
    final db = await database;

    return await db.update(
      TABLE_PASSAGEM,
      passagem.toJson(),
      where: "id = ?",
      whereArgs: [passagem.id],
    );
  }

  Future<int> contadorPassagem() async {
    final db = await database;
    final contador = Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM $TABLE_PASSAGEM'));

    return contador;
  }
}
