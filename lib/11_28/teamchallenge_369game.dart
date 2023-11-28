void main() {
  List<String> players = ['player1', 'player2', 'player3', 'player4'];
  int currentPlayerIndex = 0;
  int clapCount = 0;
  int roolCount = 0;
  int ahhCount = 0;
  List<int> clapCountsByPlayer = [0, 0, 0, 0];

  for (int i = 1; i <= 100; i++) {
    String currentPlayer = players[currentPlayerIndex];

    if (i % 30 == 0) {
      print('$currentPlayer: ahh');
      ahhCount++;
    } else if (i % 3 == 0) {
      print('$currentPlayer: clap');
      clapCount++;
      clapCountsByPlayer[currentPlayerIndex]++;
    } else if (i % 10 == 0) {
      print('$currentPlayer: rool');
      roolCount++;
    } else {
      print('$currentPlayer: $i');
    }

    currentPlayerIndex = (currentPlayerIndex + 1) % players.length;
  }

  print('\n각 플레이어가 clap을 말한 횟수:');
  for (int i = 0; i < players.length; i++) {
    print('${players[i]}: ${clapCountsByPlayer[i]} 번');
  }

  print('\nclap의 총 갯수 : $clapCount');
  print('rool의 총 갯수: $roolCount');
  print('ahh의 총 갯수: $ahhCount');

  // 가장 많은 'clap'을 한 플레이어 찾기
  int maxClapsIndex = clapCountsByPlayer.indexOf(clapCountsByPlayer.reduce((a, b) => a > b ? a : b));
  String playerWithMostClaps = players[maxClapsIndex];
  print('가장 많은 clap을 한 플레이어: $playerWithMostClaps');
}