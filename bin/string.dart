import 'package:characters/characters.dart';

void main() {
  const firstName = 'John';
  const lastName = 'Doe';
  const fullName = '$firstName $lastName';

  print('Hello, my name is $fullName!');

  const twoCountries = '🇹🇩🇷🇴';
  print(twoCountries);
  print(twoCountries.codeUnits);
  print(twoCountries.runes);

  const vote2 =
      'Thumbs up!👍'; // has 12 UTF-16 code units, 11 Unicode code points (runes), and 11 grapheme clusters
  print(vote2);
  print(vote2.codeUnits);
  print(vote2.runes);
  print(
      'Number of UTF-16 code units: ${vote2.codeUnits.length}'); // Outputs: 12
  print('Number of Unicode code points: ${vote2.runes.length}'); // Outputs: 11
  print(
      'Number of Unicode grapheme clusters: ${vote2.characters.length}'); // Outputs: 11
}
