import 'package:kuis/model/question_model.dart';

List<QuestionModel> getQuestion(){

  List<QuestionModel> questions = new List<QuestionModel>();
  QuestionModel questionModel = new QuestionModel();

  //1
  questionModel.setQuestion('Penemu Framework Laravel adalah Taylor Swift');
  questionModel.setAnswer('False');
  questionModel.setImageUrl("https://miro.medium.com/max/700/1*Usnf6kTPpFqaB8LljM98zw.png");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //2
  questionModel.setQuestion('document.getElementById() termasuk JavaScript');
  questionModel.setAnswer('True');
  questionModel.setImageUrl("https://www.boleh.id/bolehtau/wp-content/uploads/2019/09/js.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //3
  questionModel.setQuestion('CSS = Cascading Style Sheets');
  questionModel.setAnswer('True');
  questionModel.setImageUrl("https://www.webhozz.com/blog/wp-content/uploads/2019/06/css.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //4
  questionModel.setQuestion('Kepanjangan dari HTML = How To Make Lumpia');
  questionModel.setAnswer('False');
  questionModel.setImageUrl("https://www.techfor.id/wp-content/uploads/2019/12/html.png");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //5
  questionModel.setQuestion('Tag <b></b> berfungsi untuk menebalkan huruf');
  questionModel.setAnswer('True');
  questionModel.setImageUrl("https://gilacoding.com/upload/artikel/html.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  return questions;
}