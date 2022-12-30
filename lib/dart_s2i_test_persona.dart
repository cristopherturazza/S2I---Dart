// Esercizio numero 8

// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

abstract class Persona {
  String nome;
  String cognome;
  String codice;
  int eta;

  Persona(
      {required this.nome,
      required this.cognome,
      required this.codice,
      required this.eta});
}

class Docente extends Persona {
  Docente(
      {required super.nome,
      required super.cognome,
      required super.codice,
      required super.eta});

  String getCodice() => codice;
  String getNome() => nome;
  String getCognome() => cognome;
  int getEta() => eta;

  @override
  String toString() {
    return "nome: $nome \ncognome: $cognome \ncodice: $codice \netà: $eta \n";
  }
}

class Studente extends Persona {
  Studente(
      {required super.nome,
      required super.cognome,
      required super.codice,
      required super.eta});

  String getCodice() => codice;
  String getNome() => nome;
  String getCognome() => cognome;
  int getEta() => eta;

  @override
  String toString() {
    return "nome: $nome \ncognome: $cognome \ncodice: $codice \netà: $eta \n";
  }
}

class Universita {
  late List<Studente> studenti;
  late List<Docente> docenti;

  Universita({required this.studenti, required this.docenti});

  Docente? cercaDocentiByCodice(String codice) {
    var index = docenti.indexWhere((elem) => elem.codice == codice);
    return index >= 0 ? docenti[index] : null;
  }

  Iterable<Docente>? cercaDocentiByCognome(String cognome) {
    var docentiByCognome = docenti.where((elem) => elem.cognome == cognome);
    return docentiByCognome.isNotEmpty ? docentiByCognome : null;
  }

  Studente? cercaStudentiByCodice(String codice) {
    var index = studenti.indexWhere((elem) => elem.codice == codice);
    return index >= 0 ? studenti[index] : null;
  }

  Iterable<Studente>? cercaStudentiByCognome(String cognome) {
    var studentiByCognome = studenti.where((elem) => elem.cognome == cognome);
    return studentiByCognome.isNotEmpty ? studentiByCognome : null;
  }

  num mediaEtaStudenti() {
    var media = studenti.map((s) => s.getEta()).average;
    return media;
  }

  num mediaEtaDocenti() {
    var media = docenti.map((s) => s.getEta()).average;
    return media;
  }
}
