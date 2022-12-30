import 'package:dart_s2i_test/dart_s2i_test.dart' as s2i;
import 'package:dart_s2i_test/dart_s2i_test_persona.dart' as s2i8;

void main(List<String> arguments) {
// Primo esercizio
  print("Primo esercizio \n------------------ \n");

  // Parte da 6 come richiesto, ma puoi uscire dallo schermo se vuoi.
  s2i.asterisker(6);

// Secondo esercizio
  print("\nSecondo esercizio \n------------------ \n");

  s2i.palindroma("ingegni");
  s2i.palindroma("scaldabagno");

// Terzo esercizio
  print("\nTerzo esercizio \n------------------ \n");

  final int base = 4;
  final int altezza = 6;

  s2i.areaRettangolo(base: base, altezza: altezza);

// Quarto esercizio
  print("\nQuarto esercizio \n------------------ \n");

  s2i.sommaProdotto(4, 8);
  s2i.sommaProdotto(8, 8);

// Quinto esercizio
  print("\nQuinto esercizio \n------------------ \n");

  s2i.verificaEsame(8, 9);
  s2i.verificaEsame(8, 20);
  s2i.verificaEsame(8, 23);

// Sesto esercizio
  print("\nSesto esercizio \n------------------ \n");

  s2i.Persona marco = s2i.Persona(
      "Marco", "Rossi", "marcorossi@gmail.com", "kfhSdF65!", "05/12/1992");
  s2i.Persona laura = s2i.Persona(
      "Laura", "Verdi", "lauraverdi@gmail.com", "mfGH54?", "08/04/1973");

  print(marco.toString());
  print(laura.toString());

// Settimo esercizio
  print("\nSettimo esercizio \n------------------ \n");

  var arr = <num>[6, 3, 1, 2, 9];

  num media = s2i.calcolaMedia(arr);

  print("La media dei numeri forniti è $media");

// Ottavo esercizio
  print("\nOttavo esercizio \n------------------ \n");

// dichiaro tre studenti sample
  s2i8.Studente marcoRossi = s2i8.Studente(
      nome: "Marco", cognome: "Rossi", codice: "ST002567", eta: 22);

  s2i8.Studente luciaVerdi = s2i8.Studente(
      nome: "Lucia", cognome: "Verdi", codice: "ST002789", eta: 24);

  s2i8.Studente vanessaBianchi = s2i8.Studente(
      nome: "Vanessa", cognome: "Bianchi", codice: "ST006590", eta: 21);

  // dichiaro 3 docenti sample
  s2i8.Docente filippoSelmo = s2i8.Docente(
      nome: "Filippo", cognome: "Selmo", codice: "DC002415", eta: 35);

  s2i8.Docente vanessaGalvani = s2i8.Docente(
      nome: "Vanessa", cognome: "Galvani", codice: "DC002008", eta: 48);

  s2i8.Docente serenaBavelloni = s2i8.Docente(
      nome: "Serena", cognome: "Selmo", codice: "DC002415", eta: 35);

  // creo università
  s2i8.Universita uniVR = s2i8.Universita(
      docenti: [filippoSelmo, vanessaGalvani, serenaBavelloni],
      studenti: [luciaVerdi, marcoRossi, vanessaBianchi]);

  // lancio i metodi richiesti nell'esercizio per Università
  print("La media età degli studenti è ${uniVR.mediaEtaStudenti()}\n");
  print("La media età dei docenti è ${uniVR.mediaEtaDocenti()}\n");
  print(
      "Il docente con il codice DC002415 è: \n${uniVR.cercaDocentiByCodice("DC002415").toString()}\n");
  print(
      "Lo studente con il codice ST006590 è: \n${uniVR.cercaStudentiByCodice("ST006590").toString()}\n");
  print(
      "I docenti con il cognome \"Selmo\" sono: \n ${uniVR.cercaDocentiByCognome("Selmo").toString()}\n");
  print(
      "Gli studenti con il cognome \"Verdi\" sono: \n ${uniVR.cercaStudentiByCognome("Verdi").toString()}\n");
}
