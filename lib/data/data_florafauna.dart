import 'package:kuis/model/question_model.dart';

List<QuestionModel> getQuestion(){

  List<QuestionModel> questions = new List<QuestionModel>();
  QuestionModel questionModel = new QuestionModel();

  //1
  questionModel.setQuestion('Telinga Kucing ada 2');
  questionModel.setAnswer('True');
  questionModel.setImageUrl("https://awsimages.detik.net.id/community/media/visual/2020/01/16/43bbf8f7-05cb-4361-8c0c-ecb0d02382e2_169.jpeg?w=700&q=90");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //2
  questionModel.setQuestion('Warna tubuh putih dan hitam selalu identik dengan Kuda Nil');
  questionModel.setAnswer('False');
  questionModel.setImageUrl("https://cdn2.tstatic.net/wartakota/foto/bank/images/hiipo_20171015_104308.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //3
  questionModel.setQuestion('Kutu hanya ada pada manusia');
  questionModel.setAnswer('False');
  questionModel.setImageUrl("https://cdns.klimg.com/merdeka.com/i/w/news/2019/10/22/1119539/670x335/6-hal-yang-bisa-jadi-penanda-adanya-kutu-rambut-di-kepalamu.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //4
  questionModel.setQuestion('T-Rex = Titan Rex');
  questionModel.setAnswer('False');
  questionModel.setImageUrl("https://gatra.website/foldershared/images/2019/anton/05-May/IMG_20190507_225020.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //5
  questionModel.setQuestion('Bunga bangkai adalah bunga terwangi didunia');
  questionModel.setAnswer('False');
  questionModel.setImageUrl("https://asset-a.grid.id//crop/0x0:0x0/360x240/photo/bobofoto/original/15096_perbedaan-bunga-bangkai-dan-rafflesia.jpg");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  return questions;
}