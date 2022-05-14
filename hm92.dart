//async/await || Future API

import 'dart:html';

void main(List<String> args) {
  print("start main");
  printFileContent();
  print("end main");
}

printFileContent() {
  Future<String> fileContent = downloadFileContent();
  fileContent.then((resultString) {
    print("The content of the file is --->");
    print(resultString);
  });
}

downloadFileContent() {
  Future<String> result = Future.delayed(Duration(seconds: 5), () {
    return HttpRequest.getString('https://dart.dev/f/dailyNewsDigest.txt');
  });
  return result;
}
