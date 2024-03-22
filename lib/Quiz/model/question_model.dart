class Question {
  final String questionText;
  final List<Answer> answerList;
  Question(this.questionText, this.answerList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  //Mampiditra fanontaniana

  list.add(Question("Iza no mpanjaka voalohany teto Mada ?", [
    Answer("Ranavalona 1", false),
    Answer("Radama 1", true),
    Answer("Rasoherina ", false),
    Answer("Andrianampoinimerina", false),
  ]));
  list.add(Question("Iza no filoha voalohany teto Madagasikara ?", [
    Answer("Marc Ravalomanana", false),
    Answer("Philbert Tsiranana", true),
    Answer("Andry Rajoelina ", false),
    Answer("Ratsiraka", false),
  ]));
  list.add(Question("Iza no nahita  an'i  Madagasikara voalohany ?", [
    Answer("Philbert", false),
    Answer("Diego-Suarez", true),
    Answer("Christoph ", false),
    Answer("Andrianampoinimerina", false),
  ]));
  list.add(Question("Iza no Renivohitr'i Madagasikara ?", [
    Answer("Tamatave", false),
    Answer("Toliara", false),
    Answer("Fianarantsoa ", false),
    Answer("Antananarivo", true),
  ]));
  list.add(Question("Inona ny fiantso ny olona avy any Alaotra Mangoro ?", [
    Answer("Merina", false),
    Answer("Betsileo", false),
    Answer("Sihanaka ", true),
    Answer("Betsimisaraka", false),
  ]));
  list.add(
      Question("Iza no faritra mamokatra vary indrindra eto Madagasikara ?", [
    Answer("Analamanga", false),
    Answer("Vakinakaratra", false),
    Answer("Boeny ", false),
    Answer("Alaotra Mangoro", true),
  ]));
  list.add(Question("Aiza no misy ny lac lehibe indrindra eto Madagasikara?", [
    Answer("Kinkony", false),
    Answer("Alaotra", true),
    Answer("Itasy ", false),
    Answer("Tsimanampetsotsa", false),
  ]));
  list.add(Question("Iza amin'ireto no tsy nilatsaka filoham-pirenena 2023?", [
    Answer("Marc Ravalomanana", false),
    Answer("Gascar Fenosoa", true),
    Answer("Mamy Ravatomanga", true),
    Answer("Tahina Razafinjoelina", false),
  ]));
  list.add(Question("Aiza no misy ny Rovan'i Madagasikara?", [
    Answer("Tsimbazaza", false),
    Answer("Andohalo", true),
    Answer("Ankatso ", false),
    Answer("Mahitsy", false),
  ]));
  list.add(Question("Aiza ny toerana  misy ny parc eto Antananarivo?", [
    Answer("Anosy", false),
    Answer("Tsimbazaza", true),
    Answer("Analakely", false),
    Answer("Behoririka", false),
  ]));
  return list;
}
