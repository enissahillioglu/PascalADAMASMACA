program ornek ;
uses crt;
var
a:string;
Str:string;
Arr: array of Char;
i,j,c,Len,tpl: Integer;

karakter: Char;
procedure bitir;
begin
 clrscr;
gotoxy(15,8);
write('------------------------------------------------------');
writeln();
gotoxy(15,10);
writeln('-----------------------------------------------------');
gotoxy(15,9);

write('T  E  B  R  ò  K  L  E  R');
readln();
end;

procedure denden;
var
k: integer;
begin
clrscr;
gotoxy(15,8);
write('------------------------------------------------------');
writeln();
gotoxy(15,10);
writeln('-----------------------------------------------------');
gotoxy(15,9);
for k:=1 to Len do
write(Arr[k],'        ');
gotoxy(20,13);
write('KELòMEMòZ ',Len,' HARFTEN OLUSUYOR!');
gotoxy(22,14);
write('(Cçkmak icin 0 degerini girin..)');
gotoxy(20,15);
write('BIR HARF GIRINIZ   : ');
end;




begin
clrscr;
tpl:=0;
writeln('Kelimeyi gir ve oyuna baüla... :');
readln(Str);
Len:=Length(Str);
SetLength(Arr,15);

for c:=0 to 10 do
Arr[c]:='-';
denden;

for j:=1 to 10 do
begin
readln(karakter);

for i:=1 to Len do
begin

if karakter = Str[i] then
begin
 Arr[i]:=Str[i];
 tpl:=tpl+1;
 end;
 denden;

     end;

if(tpl=Len) then
begin

bitir;
break;
end;

 end;






 readln();

     end.
