import 'package:kuis/model/question_model.dart';

List<QuestionModel> getQuestion(){

  List<QuestionModel> questions = new List<QuestionModel>();
  QuestionModel questionModel = new QuestionModel();

  //1
  questionModel.setQuestion('Presiden Pertama Negara Indonesia adalah SBY');
  questionModel.setAnswer('False');
  questionModel.setImageUrl("https://statik.tempo.co/data/2012/08/08/id_134693/134693_620.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //2
  questionModel.setQuestion('Rumus Luas Segitiga adalah Alas x Tinggi : 2');
  questionModel.setAnswer('True');
  questionModel.setImageUrl("https://www.belajarpedia.co.id/wp-content/uploads/2019/06/Rumus-Luas-Segitiga-dan-Keliling.jpg");
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
  questionModel.setQuestion('UN 2020 ditiadakan');
  questionModel.setAnswer('True');
  questionModel.setImageUrl("https://mmc.tirto.id/image/otf/700x0/2019/03/25/unbk-smk-di-pantai-barat-aceh-antarafoto--2_ratio-16x9.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  return questions;
}