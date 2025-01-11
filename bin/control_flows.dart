enum AudioState {
  playing,
  paused,
  stopped,
}

void main() {
  const myAge = 45;
  const isTeen = true;
  const maryAge = 30;
  const bothTeens = true;
  const reader = 'Torben';
  const ray = 'Ray Wenderlich';
  const rayIsReader = ray == reader;
  //strong equality
  print(rayIsReader.toString() + isTeen.toString() + bothTeens.toString());

  if (myAge == 45) {
    print('You are 45 years old');
  }

//if statement
  if (myAge > 13 && myAge < 19) {
    print('Teenager');
  } else if (myAge >= 19) {
    print('Adult');
  } else {
    print('Child');
  }

  //ternary operator
  const isTeenager = myAge > 13 && myAge < 19 ? true : false;
  print(isTeenager);

//switch statement
  const audioState = AudioState.playing;
  switch (audioState) {
    case AudioState.playing:
      print('Audio is playing');
      break;
    case AudioState.paused:
      print('Audio is paused');
      break;
    case AudioState.stopped:
      print('Audio is stopped');
      break;
  }
}
