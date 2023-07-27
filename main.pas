uses crt;

var
  TargetWord: string;
  GuessedWord: string;
  GuessedLetters: array of Char;
  GuessedLetterCount, WordLength, CorrectLetterCount: Integer;
  Guess: Char;

procedure ShowGameOver;
begin
  clrscr;
  gotoxy(15, 8);
  writeln('------------------------------------------------------');
  gotoxy(15, 10);
  writeln('-----------------------------------------------------');
  gotoxy(15, 9);
  write('T  E  B  R  ˜  K  L  E  R');
  readln();
end;

procedure ShowWordStatus;
var
  i: Integer;
begin
  clrscr;
  gotoxy(15, 8);
  writeln('------------------------------------------------------');
  gotoxy(15, 10);
  writeln('-----------------------------------------------------');
  gotoxy(15, 9);
  for i := 1 to WordLength do
    write(GuessedWord[i], '        ');
  gotoxy(20, 13);
  write('KEL˜MEM˜Z ', WordLength, ' HARFTEN OLUSUYOR!');
  gotoxy(22, 14);
  write('(Ckmak icin 0 degerini girin..)');
  gotoxy(20, 15);
  write('BIR HARF GIRINIZ   : ');
end;

begin
  clrscr;
  CorrectLetterCount := 0;
  writeln('Kelimeyi gir ve oyuna başla... :');
  readln(TargetWord);
  WordLength := Length(TargetWord);
  SetLength(GuessedLetters, 10);

  for GuessedLetterCount := 0 to 10 do
    GuessedLetters[GuessedLetterCount] := '-';

  ShowWordStatus;

  for GuessedLetterCount := 1 to 10 do
  begin
    readln(Guess);

    for CorrectLetterCount := 1 to WordLength do
    begin
      if Guess = TargetWord[CorrectLetterCount] then
      begin
        GuessedWord[CorrectLetterCount] := Guess;
        GuessedLetters[GuessedLetterCount] := Guess;
        Break;
      end;
    end;

    ShowWordStatus;

    if GuessedWord = TargetWord then
    begin
      ShowGameOver;
      Break;
    end;

  end;

  readln();
end.
