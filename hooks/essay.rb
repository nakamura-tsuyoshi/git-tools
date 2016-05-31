#!/usr/bin/env ruby

essays = [
  {'essay' => '分別のある行動', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%88%86%E5%88%A5%E3%81%AE%E3%81%82%E3%82%8B%E8%A1%8C%E5%8B%95'},
  {'essay' => '関数型プログラミングを学ぶことの重要性', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E9%96%A2%E6%95%B0%E5%9E%8B%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E3%82%92%E5%AD%A6%E3%81%B6%E3%81%93%E3%81%A8%E3%81%AE%E9%87%8D%E8%A6%81%E6%80%A7'},
  {'essay' => 'ユーザが何をするかを観察する（あなたはユーザではない）', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%A6%E3%83%BC%E3%82%B6%E3%81%8C%E4%BD%95%E3%82%92%E3%81%99%E3%82%8B%E3%81%8B%E3%82%92%E8%A6%B3%E5%AF%9F%E3%81%99%E3%82%8B%EF%BC%88%E3%81%82%E3%81%AA%E3%81%9F%E3%81%AF%E3%83%A6%E3%83%BC%E3%82%B6%E3%81%A7%E3%81%AF%E3%81%AA%E3%81%84%EF%BC%89'},
  {'essay' => 'コーディング規約を自動化する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E8%A6%8F%E7%B4%84%E3%82%92%E8%87%AA%E5%8B%95%E5%8C%96%E3%81%99%E3%82%8B'},
  {'essay' => '美はシンプルさに宿る', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E7%BE%8E%E3%81%AF%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E3%81%95%E3%81%AB%E5%AE%BF%E3%82%8B'},
  {'essay' => 'リファクタリングの際に注意すべきこと', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%AA%E3%83%95%E3%82%A1%E3%82%AF%E3%82%BF%E3%83%AA%E3%83%B3%E3%82%B0%E3%81%AE%E9%9A%9B%E3%81%AB%E6%B3%A8%E6%84%8F%E3%81%99%E3%81%B9%E3%81%8D%E3%81%93%E3%81%A8'},
  {'essay' => '共有は慎重に', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%85%B1%E6%9C%89%E3%81%AF%E6%85%8E%E9%87%8D%E3%81%AB'},
  {'essay' => 'ボーイスカウト・ルール', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%9C%E3%83%BC%E3%82%A4%E3%82%B9%E3%82%AB%E3%82%A6%E3%83%88%E3%83%BB%E3%83%AB%E3%83%BC%E3%83%AB'},
  {'essay' => '他人よりまず自分を疑う', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E4%BB%96%E4%BA%BA%E3%82%88%E3%82%8A%E3%81%BE%E3%81%9A%E8%87%AA%E5%88%86%E3%82%92%E7%96%91%E3%81%86'},
  {'essay' => 'ツールの選択は慎重に', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%84%E3%83%BC%E3%83%AB%E3%81%AE%E9%81%B8%E6%8A%9E%E3%81%AF%E6%85%8E%E9%87%8D%E3%81%AB'},
  {'essay' => 'ドメインの言葉を使ったコード', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%88%E3%82%99%E3%83%A1%E3%82%A4%E3%83%B3%E3%81%AE%E8%A8%80%E8%91%89%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%9F%E3%82%B3%E3%83%BC%E3%83%88%E3%82%99'},
  {'essay' => 'コードは設計である', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%88%E3%82%99%E3%81%AF%E8%A8%AD%E8%A8%88%E3%81%A6%E3%82%99%E3%81%82%E3%82%8B'},
  {'essay' => 'コードレイアウトの重要性', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%88%E3%82%99%E3%83%AC%E3%82%A4%E3%82%A2%E3%82%A6%E3%83%88%E3%81%AE%E9%87%8D%E8%A6%81%E6%80%A7'},
  {'essay' => 'コードレビュー', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%88%E3%82%99%E3%83%AC%E3%83%92%E3%82%99%E3%83%A5%E3%83%BC'},
  {'essay' => 'コードの論理的検証', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%88%E3%82%99%E3%81%AE%E8%AB%96%E7%90%86%E7%9A%84%E6%A4%9C%E8%A8%BC'},
  {'essay' => 'コメントについてのコメント', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6%E3%81%AE%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88'},
  {'essay' => 'コードに書けないことのみをコメントにする', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%89%E3%81%AB%E6%9B%B8%E3%81%91%E3%81%AA%E3%81%84%E3%81%93%E3%81%A8%E3%81%AE%E3%81%BF%E3%82%92%E3%82%B3%E3%83%A1%E3%83%B3%E3%83%88%E3%81%AB%E3%81%99%E3%82%8B'},
  {'essay' => '学び続ける姿勢', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%AD%A6%E3%81%B3%E7%B6%9A%E3%81%91%E3%82%8B%E5%A7%BF%E5%8B%A2'},
  {'essay' => '誰にとっての「利便性」か', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%AA%B0%E3%81%AB%E3%81%A8%E3%81%A3%E3%81%A6%E3%81%AE%E3%80%8C%E5%88%A9%E4%BE%BF%E6%80%A7%E3%80%8D%E3%81%8B'},
  {'essay' => 'すばやくデプロイ、こまめにデプロイ', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%81%99%E3%81%B0%E3%82%84%E3%81%8F%E3%83%87%E3%83%97%E3%83%AD%E3%82%A4%E3%80%81%E3%81%93%E3%81%BE%E3%82%81%E3%81%AB%E3%83%87%E3%83%97%E3%83%AD%E3%82%A4'},
  {'essay' => '技術的例外とビジネス例外を明確に区別する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E6%8A%80%E8%A1%93%E7%9A%84%E4%BE%8B%E5%A4%96%E3%81%A8%E3%83%93%E3%82%B8%E3%83%8D%E3%82%B9%E4%BE%8B%E5%A4%96%E3%82%92%E6%98%8E%E7%A2%BA%E3%81%AB%E5%8C%BA%E5%88%A5%E3%81%99%E3%82%8B'},
  {'essay' => '1万時間の訓練', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/1%E4%B8%87%E6%99%82%E9%96%93%E3%81%AE%E8%A8%93%E7%B7%B4'},
  {'essay' => 'ドメイン特化言語', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%89%E3%83%A1%E3%82%A4%E3%83%B3%E7%89%B9%E5%8C%96%E8%A8%80%E8%AA%9E'},
  {'essay' => '変更を恐れない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%A4%89%E6%9B%B4%E3%82%92%E6%81%90%E3%82%8C%E3%81%AA%E3%81%84'},
  {'essay' => '見られて恥ずかしいデータは使わないこと', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%A6%8B%E3%82%89%E3%82%8C%E3%81%A6%E6%81%A5%E3%81%9A%E3%81%8B%E3%81%97%E3%81%84%E3%83%87%E3%83%BC%E3%82%BF%E3%81%AF%E4%BD%BF%E3%82%8F%E3%81%AA%E3%81%84%E3%81%93%E3%81%A8'},
  {'essay' => '言語だけでなく文化も学ぶ', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%A8%80%E8%AA%9E%E3%81%A0%E3%81%91%E3%81%A7%E3%81%AA%E3%81%8F%E6%96%87%E5%8C%96%E3%82%82%E5%AD%A6%E3%81%B6'},
  {'essay' => '死ぬはずのプログラムを無理に生かしておいてはいけない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E6%AD%BB%E3%81%AC%E3%81%AF%E3%81%9A%E3%81%AE%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%A0%E3%82%92%E7%84%A1%E7%90%86%E3%81%AB%E7%94%9F%E3%81%8B%E3%81%97%E3%81%A6%E3%81%8A%E3%81%84%E3%81%A6%E3%81%AF%E3%81%84%E3%81%91%E3%81%AA%E3%81%84'},
  {'essay' => '「魔法」に頼りすぎてはいけない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%80%8C%E9%AD%94%E6%B3%95%E3%80%8D%E3%81%AB%E9%A0%BC%E3%82%8A%E3%81%99%E3%81%8E%E3%81%A6%E3%81%AF%E3%81%84%E3%81%91%E3%81%AA%E3%81%84'},
  {'essay' => 'DRY原則', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/DRY%E5%8E%9F%E5%89%87'},
  {'essay' => 'そのコードに触れてはならない！', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%81%9D%E3%81%AE%E3%82%B3%E3%83%BC%E3%83%89%E3%81%AB%E8%A7%A6%E3%82%8C%E3%81%A6%E3%81%AF%E3%81%AA%E3%82%89%E3%81%AA%E3%81%84%EF%BC%81'},
  {'essay' => '状態だけでなく「ふるまい」もカプセル化する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E7%8A%B6%E6%85%8B%E3%81%A0%E3%81%91%E3%81%A7%E3%81%AA%E3%81%8F%E3%80%8C%E3%81%B5%E3%82%8B%E3%81%BE%E3%81%84%E3%80%8D%E3%82%82%E3%82%AB%E3%83%97%E3%82%BB%E3%83%AB%E5%8C%96%E3%81%99%E3%82%8B'},
  {'essay' => '浮動小数点数は実数ではない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E6%B5%AE%E5%8B%95%E5%B0%8F%E6%95%B0%E7%82%B9%E6%95%B0%E3%81%AF%E5%AE%9F%E6%95%B0%E3%81%A7%E3%81%AF%E3%81%AA%E3%81%84'},
  {'essay' => 'オープンソースプロジェクトで夢を実現する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%AA%E3%83%BC%E3%83%97%E3%83%B3%E3%82%BD%E3%83%BC%E3%82%B9%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E3%81%A7%E5%A4%A2%E3%82%92%E5%AE%9F%E7%8F%BE%E3%81%99%E3%82%8B'},
  {'essay' => 'API設計の黄金律', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/API%E8%A8%AD%E8%A8%88%E3%81%AE%E9%BB%84%E9%87%91%E5%BE%8B'},
  {'essay' => '超人の神話', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%B6%85%E4%BA%BA%E3%81%AE%E7%A5%9E%E8%A9%B1'},
  {'essay' => 'ハードワークは報われない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%8F%E3%83%BC%E3%83%89%E3%83%AF%E3%83%BC%E3%82%AF%E3%81%AF%E5%A0%B1%E3%82%8F%E3%82%8C%E3%81%AA%E3%81%84'},
  {'essay' => 'バグレポートの使い方', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%90%E3%82%B0%E3%83%AC%E3%83%9D%E3%83%BC%E3%83%88%E3%81%AE%E4%BD%BF%E3%81%84%E6%96%B9'},
  {'essay' => '余分なコードは決して書かない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E4%BD%99%E5%88%86%E3%81%AA%E3%82%B3%E3%83%BC%E3%83%89%E3%81%AF%E6%B1%BA%E3%81%97%E3%81%A6%E6%9B%B8%E3%81%8B%E3%81%AA%E3%81%84'},
  {'essay' => '最初が肝心', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E6%9C%80%E5%88%9D%E3%81%8C%E8%82%9D%E5%BF%83'},
  {'essay' => 'プロセス間通信とアプリケーションの応答時間の関係', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%97%E3%83%AD%E3%82%BB%E3%82%B9%E9%96%93%E9%80%9A%E4%BF%A1%E3%81%A8%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%AE%E5%BF%9C%E7%AD%94%E6%99%82%E9%96%93%E3%81%AE%E9%96%A2%E4%BF%82'},
  {'essay' => '無駄な警告を排除する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E7%84%A1%E9%A7%84%E3%81%AA%E8%AD%A6%E5%91%8A%E3%82%92%E6%8E%92%E9%99%A4%E3%81%99%E3%82%8B'},
  {'essay' => 'コマンドラインツールを使う', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%83%A9%E3%82%A4%E3%83%B3%E3%83%84%E3%83%BC%E3%83%AB%E3%82%92%E4%BD%BF%E3%81%86'},
  {'essay' => 'プログラミング言語は複数習得すべき', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E8%A8%80%E8%AA%9E%E3%81%AF%E8%A4%87%E6%95%B0%E7%BF%92%E5%BE%97%E3%81%99%E3%81%B9%E3%81%8D'},
  {'essay' => 'IDEを知る', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/IDE%E3%82%92%E7%9F%A5%E3%82%8B'},
  {'essay' => '限界を知る', 'url' => ''},
  {'essay' => 'すべきことは常に明確に', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%81%99%E3%81%B9%E3%81%8D%E3%81%93%E3%81%A8%E3%81%AF%E5%B8%B8%E3%81%AB%E6%98%8E%E7%A2%BA%E3%81%AB'},
  {'essay' => ' 大量のデータはデータベースで ', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%A4%A7%E9%87%8F%E3%81%AE%E3%83%87%E3%83%BC%E3%82%BF%E3%81%AF%E3%83%87%E3%83%BC%E3%82%BF%E3%83%99%E3%83%BC%E3%82%B9%E3%81%A7'},
  {'essay' => 'いろいろな言葉を学ぶ', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%81%84%E3%82%8D%E3%81%84%E3%82%8D%E3%81%AA%E8%A8%80%E8%91%89%E3%82%92%E5%AD%A6%E3%81%B6'},
  {'essay' => '見積りとは何か', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%A6%8B%E7%A9%8D%E3%82%8A%E3%81%A8%E3%81%AF%E4%BD%95%E3%81%8B'},
  {'essay' => 'Hello, Worldから始めよう', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/Hello,%20World%E3%81%8B%E3%82%89%E5%A7%8B%E3%82%81%E3%82%88%E3%81%86'},
  {'essay' => 'プロジェクト自身にしゃべらせる', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E8%87%AA%E8%BA%AB%E3%81%AB%E3%81%97%E3%82%83%E3%81%B9%E3%82%89%E3%81%9B%E3%82%8B'},
  {'essay' => '「その場しのぎ」が長生きしてしまう', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%80%8C%E3%81%9D%E3%81%AE%E5%A0%B4%E3%81%97%E3%81%AE%E3%81%8E%E3%80%8D%E3%81%8C%E9%95%B7%E7%94%9F%E3%81%8D%E3%81%97%E3%81%A6%E3%81%97%E3%81%BE%E3%81%86'},
  {'essay' => '正しい使い方を簡単に、誤った使い方を困難に', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E6%AD%A3%E3%81%97%E3%81%84%E4%BD%BF%E3%81%84%E6%96%B9%E3%82%92%E7%B0%A1%E5%8D%98%E3%81%AB%E3%80%81%E8%AA%A4%E3%81%A3%E3%81%9F%E4%BD%BF%E3%81%84%E6%96%B9%E3%82%92%E5%9B%B0%E9%9B%A3%E3%81%AB'},
  {'essay' => '見えないものを見えるように', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%A6%8B%E3%81%88%E3%81%AA%E3%81%84%E3%82%82%E3%81%AE%E3%82%92%E8%A6%8B%E3%81%88%E3%82%8B%E3%82%88%E3%81%86%E3%81%AB'},
  {'essay' => '並行処理に有効なメッセージパッシング', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E4%B8%A6%E8%A1%8C%E5%87%A6%E7%90%86%E3%81%AB%E6%9C%89%E5%8A%B9%E3%81%AA%E3%83%A1%E3%83%83%E3%82%BB%E3%83%BC%E3%82%B8%E3%83%91%E3%83%83%E3%82%B7%E3%83%B3%E3%82%B0'},
  {'essay' => '未来へのメッセージ', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E6%9C%AA%E6%9D%A5%E3%81%B8%E3%81%AE%E3%83%A1%E3%83%83%E3%82%BB%E3%83%BC%E3%82%B8'},
  {'essay' => 'ポリモーフィズムの利用機会を見逃さない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%9D%E3%83%AA%E3%83%A2%E3%83%BC%E3%83%95%E3%82%A3%E3%82%BA%E3%83%A0%E3%81%AE%E5%88%A9%E7%94%A8%E6%A9%9F%E4%BC%9A%E3%82%92%E8%A6%8B%E9%80%83%E3%81%95%E3%81%AA%E3%81%84'},
  {'essay' => 'テスト担当者はプログラマの友人', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%86%E3%82%B9%E3%83%88%E6%8B%85%E5%BD%93%E8%80%85%E3%81%AF%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9E%E3%81%AE%E5%8F%8B%E4%BA%BA'},
  {'essay' => 'バイナリは常に1つ', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%90%E3%82%A4%E3%83%8A%E3%83%AA%E3%81%AF%E5%B8%B8%E3%81%AB1%E3%81%A4'},
  {'essay' => '真実を語るはコードのみ', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E7%9C%9F%E5%AE%9F%E3%82%92%E8%AA%9E%E3%82%8B%E3%81%AF%E3%82%B3%E3%83%BC%E3%83%89%E3%81%AE%E3%81%BF'},
  {'essay' => 'ビルドをおろそかにしない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%93%E3%83%AB%E3%83%89%E3%82%92%E3%81%8A%E3%82%8D%E3%81%9D%E3%81%8B%E3%81%AB%E3%81%97%E3%81%AA%E3%81%84'},
  {'essay' => 'プリミティブ型よりドメイン固有の型を', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%97%E3%83%AA%E3%83%9F%E3%83%86%E3%82%A3%E3%83%96%E5%9E%8B%E3%82%88%E3%82%8A%E3%83%89%E3%83%A1%E3%82%A4%E3%83%B3%E5%9B%BA%E6%9C%89%E3%81%AE%E5%9E%8B%E3%82%92'},
  {'essay' => 'ユーザの操作ミスを防止する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%A6%E3%83%BC%E3%82%B6%E3%81%AE%E6%93%8D%E4%BD%9C%E3%83%9F%E3%82%B9%E3%82%92%E9%98%B2%E6%AD%A2%E3%81%99%E3%82%8B'},
  {'essay' => 'プロのプログラマとは？', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%97%E3%83%AD%E3%81%AE%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9E%E3%81%A8%E3%81%AF%EF%BC%9F'},
  {'essay' => 'バージョン管理システムを有効に使う', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%90%E3%83%BC%E3%82%B8%E3%83%A7%E3%83%B3%E7%AE%A1%E7%90%86%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E3%82%92%E6%9C%89%E5%8A%B9%E3%81%AB%E4%BD%BF%E3%81%86'},
  {'essay' => 'いったんコンピュータから離れてみる', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%81%84%E3%81%A3%E3%81%9F%E3%82%93%E3%82%B3%E3%83%B3%E3%83%94%E3%83%A5%E3%83%BC%E3%82%BF%E3%81%8B%E3%82%89%E9%9B%A2%E3%82%8C%E3%81%A6%E3%81%BF%E3%82%8B'},
  {'essay' => 'コードを読む', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E8%AA%AD%E3%82%80'},
  {'essay' => '「人間」を知る', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%80%8C%E4%BA%BA%E9%96%93%E3%80%8D%E3%82%92%E7%9F%A5%E3%82%8B'},
  {'essay' => '車輪の再発明の効用', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%BB%8A%E8%BC%AA%E3%81%AE%E5%86%8D%E7%99%BA%E6%98%8E%E3%81%AE%E5%8A%B9%E7%94%A8'},
  {'essay' => 'シングルトンパターンの誘惑に負けない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B7%E3%83%B3%E3%82%B0%E3%83%AB%E3%83%88%E3%83%B3%E3%83%91%E3%82%BF%E3%83%BC%E3%83%B3%E3%81%AE%E8%AA%98%E6%83%91%E3%81%AB%E8%B2%A0%E3%81%91%E3%81%AA%E3%81%84'},
  {'essay' => 'パフォーマンスへの道は地雷コードで敷き詰められている', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%91%E3%83%95%E3%82%A9%E3%83%BC%E3%83%9E%E3%83%B3%E3%82%B9%E3%81%B8%E3%81%AE%E9%81%93%E3%81%AF%E5%9C%B0%E9%9B%B7%E3%82%B3%E3%83%BC%E3%83%89%E3%81%A7%E6%95%B7%E3%81%8D%E8%A9%B0%E3%82%81%E3%82%89%E3%82%8C%E3%81%A6%E3%81%84%E3%82%8B'},
  {'essay' => 'シンプルさは捨てることによって得られる', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B7%E3%83%B3%E3%83%97%E3%83%AB%E3%81%95%E3%81%AF%E6%8D%A8%E3%81%A6%E3%82%8B%E3%81%93%E3%81%A8%E3%81%AB%E3%82%88%E3%81%A3%E3%81%A6%E5%BE%97%E3%82%89%E3%82%8C%E3%82%8B'},
  {'essay' => '単一責任原則', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%8D%98%E4%B8%80%E8%B2%AC%E4%BB%BB%E5%8E%9F%E5%89%87'},
  {'essay' => '「イエス」から始める', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%80%8C%E3%82%A4%E3%82%A8%E3%82%B9%E3%80%8D%E3%81%8B%E3%82%89%E5%A7%8B%E3%82%81%E3%82%8B'},
  {'essay' => '面倒でも自動化できることは自動化する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E9%9D%A2%E5%80%92%E3%81%A7%E3%82%82%E8%87%AA%E5%8B%95%E5%8C%96%E3%81%A7%E3%81%8D%E3%82%8B%E3%81%93%E3%81%A8%E3%81%AF%E8%87%AA%E5%8B%95%E5%8C%96%E3%81%99%E3%82%8B'},
  {'essay' => 'コード分析ツールを利用する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%89%E5%88%86%E6%9E%90%E3%83%84%E3%83%BC%E3%83%AB%E3%82%92%E5%88%A9%E7%94%A8%E3%81%99%E3%82%8B'},
  {'essay' => '偶然の仕様ではなく本物の仕様のためのテストを書く', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%81%B6%E7%84%B6%E3%81%AE%E4%BB%95%E6%A7%98%E3%81%A7%E3%81%AF%E3%81%AA%E3%81%8F%E6%9C%AC%E7%89%A9%E3%81%AE%E4%BB%95%E6%A7%98%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AE%E3%83%86%E3%82%B9%E3%83%88%E3%82%92%E6%9B%B8%E3%81%8F'},
  {'essay' => 'テストは夜間と週末に', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%86%E3%82%B9%E3%83%88%E3%81%AF%E5%A4%9C%E9%96%93%E3%81%A8%E9%80%B1%E6%9C%AB%E3%81%AB'},
  {'essay' => 'テストのないソフトウェア開発はあり得ない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%86%E3%82%B9%E3%83%88%E3%81%AE%E3%81%AA%E3%81%84%E3%82%BD%E3%83%95%E3%83%88%E3%82%A6%E3%82%A7%E3%82%A2%E9%96%8B%E7%99%BA%E3%81%AF%E3%81%82%E3%82%8A%E5%BE%97%E3%81%AA%E3%81%84'},
  {'essay' => '1人より2人', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/1%E4%BA%BA%E3%82%88%E3%82%8A2%E4%BA%BA'},
  {'essay' => 'エラーがエラーを相殺してしまう', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%A8%E3%83%A9%E3%83%BC%E3%81%8C%E3%82%A8%E3%83%A9%E3%83%BC%E3%82%92%E7%9B%B8%E6%AE%BA%E3%81%97%E3%81%A6%E3%81%97%E3%81%BE%E3%81%86'},
  {'essay' => '他者への思いやりを意識したコーディング', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E4%BB%96%E8%80%85%E3%81%B8%E3%81%AE%E6%80%9D%E3%81%84%E3%82%84%E3%82%8A%E3%82%92%E6%84%8F%E8%AD%98%E3%81%97%E3%81%9F%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0'},
  {'essay' => 'UNIXツールを友にする', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/UNIX%E3%83%84%E3%83%BC%E3%83%AB%E3%82%92%E5%8F%8B%E3%81%AB%E3%81%99%E3%82%8B'},
  {'essay' => '正しいアルゴリズムとデータ構造を選ぶ', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E6%AD%A3%E3%81%97%E3%81%84%E3%82%A2%E3%83%AB%E3%82%B4%E3%83%AA%E3%82%BA%E3%83%A0%E3%81%A8%E3%83%87%E3%83%BC%E3%82%BF%E6%A7%8B%E9%80%A0%E3%82%92%E9%81%B8%E3%81%B6'},
  {'essay' => '冗長なログは眠りを妨げる', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%86%97%E9%95%B7%E3%81%AA%E3%83%AD%E3%82%B0%E3%81%AF%E7%9C%A0%E3%82%8A%E3%82%92%E5%A6%A8%E3%81%92%E3%82%8B'},
  {'essay' => 'WETなシステムはボトルネックが見つかりにくい', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/WET%E3%81%AA%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E3%81%AF%E3%83%9C%E3%83%88%E3%83%AB%E3%83%8D%E3%83%83%E3%82%AF%E3%81%8C%E8%A6%8B%E3%81%A4%E3%81%8B%E3%82%8A%E3%81%AB%E3%81%8F%E3%81%84'},
  {'essay' => 'プログラマとテスターが協力してできること', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9E%E3%81%A8%E3%83%86%E3%82%B9%E3%82%BF%E3%83%BC%E3%81%8C%E5%8D%94%E5%8A%9B%E3%81%97%E3%81%A6%E3%81%A7%E3%81%8D%E3%82%8B%E3%81%93%E3%81%A8'},
  {'essay' => 'コードは生涯サポートするつもりで書く', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%89%E3%81%AF%E7%94%9F%E6%B6%AF%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88%E3%81%99%E3%82%8B%E3%81%A4%E3%82%82%E3%82%8A%E3%81%A7%E6%9B%B8%E3%81%8F'},
  {'essay' => '関数の「サイズ」を小さくする', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E9%96%A2%E6%95%B0%E3%81%AE%E3%80%8C%E3%82%B5%E3%82%A4%E3%82%BA%E3%80%8D%E3%82%92%E5%B0%8F%E3%81%95%E3%81%8F%E3%81%99%E3%82%8B'},
  {'essay' => 'コードを見る人のためにテストを書く', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E8%A6%8B%E3%82%8B%E4%BA%BA%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AB%E3%83%86%E3%82%B9%E3%83%88%E3%82%92%E6%9B%B8%E3%81%8F'},
  {'essay' => '良いプログラマになるには', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%89%AF%E3%81%84%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9E%E3%81%AB%E3%81%AA%E3%82%8B%E3%81%AB%E3%81%AF'},
  {'essay' => '顧客の言葉はそのまま受け取らない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E9%A1%A7%E5%AE%A2%E3%81%AE%E8%A8%80%E8%91%89%E3%81%AF%E3%81%9D%E3%81%AE%E3%81%BE%E3%81%BE%E5%8F%97%E3%81%91%E5%8F%96%E3%82%89%E3%81%AA%E3%81%84'},
  {'essay' => 'エラーを無視するな', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%A8%E3%83%A9%E3%83%BC%E3%82%92%E7%84%A1%E8%A6%96%E3%81%99%E3%82%8B%E3%81%AA'},
  {'essay' => 'リンカは魔法のプログラムではない', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%AA%E3%83%B3%E3%82%AB%E3%81%AF%E9%AD%94%E6%B3%95%E3%81%AE%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%A0%E3%81%A7%E3%81%AF%E3%81%AA%E3%81%84'},
  {'essay' => 'ペアプログラミングと「フロー」', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%9A%E3%82%A2%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E3%81%A8%E3%80%8C%E3%83%95%E3%83%AD%E3%83%BC%E3%80%8D'},
  {'essay' => 'テストは正確に、具体的に', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%86%E3%82%B9%E3%83%88%E3%81%AF%E6%AD%A3%E7%A2%BA%E3%81%AB%E3%80%81%E5%85%B7%E4%BD%93%E7%9A%84%E3%81%AB'},
  {'essay' => 'ステートに注目する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%82%B9%E3%83%86%E3%83%BC%E3%83%88%E3%81%AB%E6%B3%A8%E7%9B%AE%E3%81%99%E3%82%8B'},
  {'essay' => '命を吹き込む魔法', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%91%BD%E3%82%92%E5%90%B9%E3%81%8D%E8%BE%BC%E3%82%80%E9%AD%94%E6%B3%95'},
  {'essay' => 'ロールプレイングゲーム', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%AD%E3%83%BC%E3%83%AB%E3%83%97%E3%83%AC%E3%82%A4%E3%83%B3%E3%82%B0%E3%82%B2%E3%83%BC%E3%83%A0'},
  {'essay' => 'ルーチンワークをフローのきっかけに', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%AB%E3%83%BC%E3%83%81%E3%83%B3%E3%83%AF%E3%83%BC%E3%82%AF%E3%82%92%E3%83%95%E3%83%AD%E3%83%BC%E3%81%AE%E3%81%8D%E3%81%A3%E3%81%8B%E3%81%91%E3%81%AB'},
  {'essay' => 'プログラマが持つべき3つのスキル', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9E%E3%81%8C%E6%8C%81%E3%81%A4%E3%81%B9%E3%81%8D3%E3%81%A4%E3%81%AE%E3%82%B9%E3%82%AD%E3%83%AB'},
  {'essay' => '快適な環境を追求する', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%BF%AB%E9%81%A9%E3%81%AA%E7%92%B0%E5%A2%83%E3%82%92%E8%BF%BD%E6%B1%82%E3%81%99%E3%82%8B'},
  {'essay' => '見知らぬ人ともうまくやるには', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%A6%8B%E7%9F%A5%E3%82%89%E3%81%AC%E4%BA%BA%E3%81%A8%E3%82%82%E3%81%86%E3%81%BE%E3%81%8F%E3%82%84%E3%82%8B%E3%81%AB%E3%81%AF'},
  {'essay' => '不具合にテストを書いて立ち向かう', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E4%B8%8D%E5%85%B7%E5%90%88%E3%81%AB%E3%83%86%E3%82%B9%E3%83%88%E3%82%92%E6%9B%B8%E3%81%84%E3%81%A6%E7%AB%8B%E3%81%A1%E5%90%91%E3%81%8B%E3%81%86'},
  {'essay' => '育ちのよいコード', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E8%82%B2%E3%81%A1%E3%81%AE%E3%82%88%E3%81%84%E3%82%B3%E3%83%BC%E3%83%89'},
  {'essay' => 'Noといえることの大事さ', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/No%E3%81%A8%E3%81%84%E3%81%88%E3%82%8B%E3%81%93%E3%81%A8%E3%81%AE%E5%A4%A7%E4%BA%8B%E3%81%95'},
  {'essay' => '名前重要', 'url' => 'http://xn--97-273ae6a4irb6e2hsoiozc2g4b8082p.com/%E3%82%A8%E3%83%83%E3%82%BB%E3%82%A4/%E5%90%8D%E5%89%8D%E9%87%8D%E8%A6%81'},
]
randam = essays.sample
puts randam['essay']+"\n\n"+'"'+randam['url']+'"'
