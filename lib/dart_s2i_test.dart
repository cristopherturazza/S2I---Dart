// Esercizi da 1 a 7

/// Stampa asterischi a cascata, inserire come parametro la lunghezza in asterischi della prima riga
void asterisker(int startValue) {
  var asterisks = List<String>.filled(startValue, "*", growable: true);
  while (asterisks.isNotEmpty) {
    print(asterisks.join(""));
    asterisks.removeLast();
  }
}

/// Verifica se una parola è palindroma, inserire la parola come parametro
void palindroma(String word) {
  word == word.split('').reversed.join('')
      ? print("La stringa è palindroma")
      : print("La stringa non è palindroma");
}

/// Calcola l'area del quadrato, il secondo potrebbe anche non esistere
void areaRettangolo({int base = 0, int altezza = 0}) {
  print("L'area del rettangolo è ${base * altezza}");
}

/// Somma di due numeri con trucchetto, prova ad inserire due numeri uguali...:D
void sommaProdotto(int a, int b) {
  a != b ? print(a + b) : print((a + b) * 3);
}

/// Calcola voto finale di un esame, inserire voto prova scritta e pratica
void verificaEsame(int scritto, int pratica) {
  if (scritto > 8 || scritto < -8) {
    throw "Il voto per l'esame scritto deve essere compreso tra +8 e -8";
  }
  if (pratica < 0 || pratica > 24) {
    throw "Il voto per l'esame pratico deve essere compreso tra 0 e 24";
  }

  pratica + scritto < 18
      ? print("L'alunno è bocciato")
      : pratica + scritto < 31
          ? print("L'alunno è promosso")
          : pratica + scritto < 33
              ? print("L'alunno è promosso con la lode")
              : print("Qualcosa è andato storto");
}

/// Classe Persona, con nome, cognome, email, password e data di nascita.
class Persona {
  String nome;
  String cognome;
  String email;
  String password;
  String birthDate;

  Persona(this.nome, this.cognome, this.email, this.password, this.birthDate);

  @override
  String toString() {
    return "nome: $nome \ncognome: $cognome \nemail: $email \npassword: ***** \nbirthdate: $birthDate \n";
  }
}

/// Calcolo della media dei valori contenuti in una List
// Fornito esempio con reducer, esempio con libreria Collection nell'esercizio 8
num calcolaMedia(List<num> numbers) {
  num sum = numbers.reduce((a, b) => a + b);
  return sum / numbers.length;
}
