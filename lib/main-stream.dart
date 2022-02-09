Stream<int> boatStream() async* {
  for (int i = 1; i <= 10; i++) {
    print("SENT boat no. " + i.toString());
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}

//async* asynchronous generator function data elle génére des données
//await waits for this process to finish(delays by 2seconds)
//yield pushes the data through  the stream river

//Function
void main(List<String> args) async {
  Stream<int> stream = boatStream(); // initialiser le stream

  stream.listen((receivedData) {
    print("RECEIVED boat no. " + receivedData.toString());
  });
}

//listen we use listen method to wait for incoming stream data