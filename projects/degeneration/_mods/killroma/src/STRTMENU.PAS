unit strtmenu;

interface
uses useful;
procedure startmenu(var h1:character{st,dex,con,int,wis,cha,lck,race,class,month,day,sex:integer};var gold:longint
{;var name:string};var hodi:longint);
procedure readok(x,y:integer);
procedure endall(h1:character;{st,dex,con,int,wis,cha,lck,race,class,month,day,sex:integer;}gold:longint;
{name:string;}hodi:longint);
procedure getdirname(drname,flname:string);
procedure loadingdata(dlay:integer);
procedure splashscreen(dlay:integer);
procedure initoptions;


implementation
uses crt,geninfo,graph,dos;

type statarr=array[1..8]of integer;
var filname,progdir:string;
    curson,grzast:boolean;
const progversion='v1.22b';
var h:character;

{==================================================}
{==================================================}
procedure savechar(h:character;gold,hodi:longint);
var f:text;
begin;
assign(f,progdir+'gamedata/saves/'+h.name+'.her');rewrite(f);
writeln(f,h.st.unm,' ',h.dex.unm,' ',h.con.unm,' ',h.per.unm,' ',h.int.unm,' ',h.wis.unm,' ',h.cha.unm,' ',h.lck.unm);
writeln(f,h.st.max,' ',h.dex.max,' ',h.con.max,' ',h.per.max,' ',h.int.max,' ',h.wis.max,' ',h.cha.max,' ',h.lck.max);
writeln(f,h.st.mmd,' ',h.dex.mmd,' ',h.con.mmd,' ',h.per.mmd,' ',h.int.mmd,' ',h.wis.mmd,' ',h.cha.mmd,' ',h.lck.mmd);
writeln(f,h.st.nmd,' ',h.dex.nmd,' ',h.con.nmd,' ',h.per.nmd,' ',h.int.nmd,' ',h.wis.nmd,' ',h.cha.nmd,' ',h.lck.nmd);
writeln(f,h.st.now,' ',h.dex.now,' ',h.con.now,' ',h.per.now,' ',h.int.now,' ',h.wis.now,' ',h.cha.now,' ',h.lck.now);
writeln(f,h.hp.now,' ',h.hp.max);
writeln(f,h.mp.now,' ',h.mp.max);
writeln(f,h.att);
writeln(f,h.uvert);
writeln(f,h.defen);
writeln(f,h.pu);
writeln(f,h.race);
writeln(f,h.prof);
writeln(f,h.sex);
writeln(f,h.month);
writeln(f,h.day);
writeln(f,h.name);
writeln(f,(1782+gold)*10+3+h.st.unm*10+h.dex.unm+h.int.unm*100);
writeln(f,hodi);
close(f);
end;
{==================================================}
procedure loadchar(var h:character;var gold,hodi:longint);
var f:text;
begin;
assign(f,progdir+'gamedata/saves/'+h.name+'.her');reset(f);
readln(f,h.st.unm,h.dex.unm,h.con.unm,h.per.unm,h.int.unm,h.wis.unm,h.cha.unm,h.lck.unm);
readln(f,h.st.max,h.dex.max,h.con.max,h.per.max,h.int.max,h.wis.max,h.cha.max,h.lck.max);
readln(f,h.st.mmd,h.dex.mmd,h.con.mmd,h.per.mmd,h.int.mmd,h.wis.mmd,h.cha.mmd,h.lck.mmd);
readln(f,h.st.nmd,h.dex.nmd,h.con.nmd,h.per.nmd,h.int.nmd,h.wis.nmd,h.cha.nmd,h.lck.nmd);
readln(f,h.st.now,h.dex.now,h.con.now,h.per.now,h.int.now,h.wis.now,h.cha.now,h.lck.now);
readln(f,h.hp.now,h.hp.max);
readln(f,h.mp.now,h.mp.max);
readln(f,h.att);
readln(f,h.uvert);
readln(f,h.defen);
readln(f,h.pu);
readln(f,h.race);
readln(f,h.prof);
readln(f,h.sex);
readln(f,h.month);
readln(f,h.day);
readln(f,h.name);
readln(f,gold);
gold:=(gold-h.st.unm*10-3-h.dex.unm-h.int.unm*100)div 10-1782;
readln(f,hodi);
close(f);
end;
{==================================================}
procedure readok(x,y:integer);
var c:char;
begin;
gotoxy(x,y);textcolor(4);write('->');gotoxy(x+2,y);textcolor(14);write('Ok');gotoxy(x+2,y);
repeat c:=readkey;until c=#13;
end;
{==================================================}
procedure genname({var name:string;}var vihod:integer);
var i,maxmenu,minmenu,cy,x:integer;
    c:char;
begin;
maxmenu:=4;minmenu:=3;cy:=3;x:=1;c:=#13;
clrscr;textcolor(7);gotoxy(1,1);write('������ ������ ��� ��� (����� �� ������ �ॢ���� 8 ᨬ�����):');
repeat
if (c=#13)and(cy=3) then
begin;
for i:=1 to 80 do begin;gotoxy(i,2);write(' ');end;
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
repeat
gotoxy(1,2);textcolor(15);for i:=1 to 80 do write(' ');gotoxy(1,2);
curon(curson);readln(h.name);curoff(curson);
until (length(h.name)<=8)and(length(h.name)>0);
end;
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
gotoxy(x,cy);textcolor(4);write('->');
gotoxy(x+2,3);if cy=3 then textcolor(14) else textcolor(15);write('��२��������');
gotoxy(x+2,4);if cy=4 then textcolor(14) else textcolor(15);write('Ok');
gotoxy(x+2,cy);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy:=cy+1;if (c='8')or(c=#72) then cy:=cy-1;
if cy<minmenu then cy:=maxmenu;if cy>maxmenu then cy:=minmenu;
until (c=#27)or((c=#13)and(cy=4));

if ((c=#13)and(cy=4)) then vihod:=1;
end;
{==================================================}
procedure genclass({var class:integer;var name:string;}var vihod:integer);
var maxmenu,minmenu,cy,x,i:integer;
    c:char;
begin;
clrscr;gotoxy(1,1);textcolor(7);
write('��� ��� ����� �� ⮫쪮 �ᠬ�, �� � �����ﬨ.');
gotoxy(1,2);textcolor(7);
write('�롥� ���⮩��� ��� ������.');
maxmenu:=18;minmenu:=3;cy:=3;x:=1;
repeat
gotoxy(1,1);textcolor(7);
write('��� ��� ����� �� ⮫쪮 �ᠬ�, �� � �����ﬨ.');
gotoxy(1,2);textcolor(7);
write('�롥� ���⮩��� ��� ������.');
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
gotoxy(x,cy);textcolor(4);write('->');
gotoxy(x+2,3);if cy=3 then textcolor(14) else textcolor(15);write('����');
gotoxy(x+2,4);if cy=4 then textcolor(14) else textcolor(15);write('�������');
gotoxy(x+2,5);if cy=5 then textcolor(14) else textcolor(15);write('��������');
gotoxy(x+2,6);if cy=6 then textcolor(14) else textcolor(15);write('���');
gotoxy(x+2,7);if cy=7 then textcolor(14) else textcolor(15);write('�����');
gotoxy(x+2,8);if cy=8 then textcolor(14) else textcolor(15);write('���');
gotoxy(x+2,9);if cy=9 then textcolor(14) else textcolor(15);write('���饭���');
gotoxy(x+2,10);if cy=10 then textcolor(14) else textcolor(15);write('���');
gotoxy(x+2,11);if cy=11 then textcolor(14) else textcolor(15);write('�����');
gotoxy(x+2,12);if cy=12 then textcolor(14) else textcolor(15);write('��筨�');
gotoxy(x+2,13);if cy=13 then textcolor(14) else textcolor(15);write('��࣮���');
gotoxy(x+2,14);if cy=14 then textcolor(14) else textcolor(15);write('��ଥ�');
gotoxy(x+2,15);if cy=15 then textcolor(14) else textcolor(15);write('�ᨮ���');
gotoxy(x+2,16);if cy=16 then textcolor(14) else textcolor(15);write('��ࢠ�');
gotoxy(x+2,17);if cy=17 then textcolor(14) else textcolor(15);write('��㨤');
gotoxy(x+2,18);if cy=18 then textcolor(14) else textcolor(15);write('���஬���');
gotoxy(x+2,cy);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy:=cy+1;if (c='8')or(c=#72) then cy:=cy-1;
if cy<minmenu then cy:=maxmenu;if cy>maxmenu then cy:=minmenu;
if c=#13 then begin;genname({name,}vihod);clrscr;end;
until (vihod=1)or(c=#27);
h.prof:=cy-2;
end;
{==================================================}
procedure genrace({var race,class:integer;var name:string;}var vihod:integer);
var maxmenu,minmenu,i,cy,x:integer;
    c:char;
begin;
clrscr;gotoxy(1,1);textcolor(7);
write('� ⮬ ���, ��� �� த����� ����� ����� ��࠭��� �����, ���� �� ��� ��!');
gotoxy(1,2);textcolor(7);write('�롥�� ᢮� ���.');
maxmenu:=12;minmenu:=3;x:=1;cy:=3;
repeat
gotoxy(1,1);textcolor(7);
write('� ⮬ ���, ��� �� த����� ����� ����� ��࠭��� �����, ���� �� ��� ��!');
gotoxy(1,2);textcolor(7);write('�롥�� ᢮� ���.');
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
gotoxy(x,cy);textcolor(4);write('->');
gotoxy(x+2, 3);if cy= 3 then textcolor(14) else textcolor(15);write('�������');
gotoxy(x+2, 4);if cy= 4 then textcolor(14) else textcolor(15);write('����');
gotoxy(x+2, 5);if cy= 5 then textcolor(14) else textcolor(15);write('���訩 ����');
gotoxy(x+2, 6);if cy= 6 then textcolor(14) else textcolor(15);write('����� ����');
gotoxy(x+2, 7);if cy= 7 then textcolor(14) else textcolor(15);write('�����᫨�');
gotoxy(x+2, 8);if cy= 8 then textcolor(14) else textcolor(15);write('�஫��');
gotoxy(x+2, 9);if cy= 9 then textcolor(14) else textcolor(15);write('��');
gotoxy(x+2,10);if cy=10 then textcolor(14) else textcolor(15);write('�ࠪ����');
gotoxy(x+2,11);if cy=11 then textcolor(14) else textcolor(15);write('������');
gotoxy(x+2,12);if cy=12 then textcolor(14) else textcolor(15);write('������');
gotoxy(x+2,cy);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy:=cy+1;if (c='8')or(c=#72) then cy:=cy-1;
if cy<minmenu then cy:=maxmenu;if cy>maxmenu then cy:=minmenu;
if c=#13 then begin;genclass({class,name,}vihod);clrscr;end;
until (vihod=1)or(c=#27);
h.race:=cy-2;
end;
{==================================================}
procedure chooseaddstat({var st,dex,con,int,wis,cha,lck,race,class:integer;var name:string;}stats:statarr;var vihod:integer);
var cy1,x,i,minmenu,maxmenu:integer;
    c:char;
begin;
cy1:=3;maxmenu:=10;minmenu:=3;x:=1;
clrscr;gotoxy(1,1);textcolor(7);
write('������ �롥�� �ࠪ���⨪�, � ���ன �� ��� ������� ����� +1');
gotoxy(x+2,10);textcolor(7);write('                                  ');
gotoxy(x+2,11);textcolor(7);write('                                  ');
repeat
gotoxy(1,1);textcolor(7);
write('������ �롥�� �ࠪ���⨪�, � ���ன �� ��� ������� ����� +1');
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
for i:=minmenu to maxmenu do begin;gotoxy(x+19,i);write('  ');end;
gotoxy(x+19,cy1);textcolor(4);write('->');
gotoxy(x+2,3);textcolor(15);write('Str, ����');
gotoxy(x+2,4);textcolor(15);write('Dex, ��������');
gotoxy(x+2,5);textcolor(15);write('Con, �뭮᫨�����');
gotoxy(x+2,6);textcolor(15);write('Per, �����⨥');
gotoxy(x+2,7);textcolor(15);write('Int, ��⥫����');
gotoxy(x+2,8);textcolor(15);write('Wis, ������');
gotoxy(x+2,9);textcolor(15);write('Cha, ���ﭨ�');
gotoxy(x+2,10);textcolor(15);write('Lck, ����');
gotoxy(x+21,3);if cy1=3 then textcolor(14) else textcolor(15);write(stats[1],'   ');
gotoxy(x+21,4);if cy1=4 then textcolor(14) else textcolor(15);write(stats[2],'   ');
gotoxy(x+21,5);if cy1=5 then textcolor(14) else textcolor(15);write(stats[3],'   ');
gotoxy(x+21,6);if cy1=6 then textcolor(14) else textcolor(15);write(stats[4],'   ');
gotoxy(x+21,7);if cy1=7 then textcolor(14) else textcolor(15);write(stats[5],'   ');
gotoxy(x+21,8);if cy1=8 then textcolor(14) else textcolor(15);write(stats[6],'   ');
gotoxy(x+21,9);if cy1=9 then textcolor(14) else textcolor(15);write(stats[7],'   ');
gotoxy(x+21,10);if cy1=10 then textcolor(14) else textcolor(15);write(stats[8],'   ');
gotoxy(x+21,cy1);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy1:=cy1+1;if (c='8')or(c=#72) then cy1:=cy1-1;
if cy1<minmenu then cy1:=maxmenu;if cy1>maxmenu then cy1:=minmenu;
if c=#13 then
begin;
stats[cy1-2]:=stats[cy1-2]+1;
for i:=minmenu to maxmenu do begin;gotoxy(x+19,i);write('  ');end;
gotoxy(x+21,3);textcolor(15);write(stats[1],'   ');
gotoxy(x+21,4);textcolor(15);write(stats[2],'   ');
gotoxy(x+21,5);textcolor(15);write(stats[3],'   ');
gotoxy(x+21,6);textcolor(15);write(stats[4],'   ');
gotoxy(x+21,7);textcolor(15);write(stats[5],'   ');
gotoxy(x+21,8);textcolor(15);write(stats[6],'   ');
gotoxy(x+21,9);textcolor(15);write(stats[7],'   ');
gotoxy(x+21,10);textcolor(15);write(stats[8],'   ');
h.st.unm:=stats[1];h.dex.unm:=stats[2];h.con.unm:=stats[3];
h.per.unm:=stats[4];h.int.unm:=stats[5];h.wis.unm:=stats[6];
h.cha.unm:=stats[7];h.lck.unm:=stats[8];
readok(x,11);
genrace({race,class,name,}vihod);clrscr
end;
until (vihod=1)or(c=#27);

end;
{==================================================}
procedure genstats(var arr:statarr);
var i1,i,min,minn:integer;
    rand:array[1..4]of integer;
    usl1,usl2:boolean;
begin;
repeat
for i:=1 to 8 do
begin;
min:=32000;
minn:=0;
rand[1]:=random(6)+1;
rand[2]:=random(6)+1;
rand[3]:=random(6)+1;
rand[4]:=random(6)+1;
for i1:=1 to 4 do begin;if rand[i1]<min then begin;min:=rand[i1];minn:=i1;end;end;
rand[minn]:=0;
arr[i]:=rand[1]+rand[2]+rand[3]+rand[4];
end;
usl1:=(arr[1]<14)and(arr[2]<14)and(arr[2]<14)and(arr[4]<14)and(arr[5]<14)and(arr[6]<14)and(arr[7]<14);
usl2:=(arr[1]+arr[2]+arr[3]+arr[4]+arr[5]+arr[6]+arr[7])<77;
until (not(usl1))and(not(usl2));
end;
{==================================================}
procedure choosestats({var st,dex,con,int,wis,cha,lck,race,class:integer;var name:string;}var vihod:integer);
var stats:statarr;
    minmenu,maxmenu,x,cy,i,cy1:integer;
    c:char;
begin;
genstats(stats);
clrscr;gotoxy(1,1);textcolor(7);
write('������ �� ������ �᪨���� �।������� �������஬ ��砩�� �᫠ �� ᢮��');
gotoxy(1,2);textcolor(7);write('�ࠪ���⨪��');
maxmenu:=12;minmenu:=3;x:=1;cy:=3;
repeat
gotoxy(1,1);textcolor(7);
write('������ �� ������ �᪨���� �।������� �������஬ ��砩�� �᫠ �� ᢮��');
gotoxy(1,2);textcolor(7);write('�ࠪ���⨪��');
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
for i:=minmenu to maxmenu do begin;gotoxy(x+19,i);write('  ');end;
gotoxy(x,cy);textcolor(4);write('->');
gotoxy(x+2, 3);if cy= 3 then textcolor(14) else textcolor(15);write('Str, ����');
gotoxy(x+2, 4);if cy= 4 then textcolor(14) else textcolor(15);write('Dex, ��������');
gotoxy(x+2, 5);if cy= 5 then textcolor(14) else textcolor(15);write('Con, �뭮᫨�����');
gotoxy(x+2, 6);if cy= 6 then textcolor(14) else textcolor(15);write('Per, �����⨥');
gotoxy(x+2, 7);if cy= 7 then textcolor(14) else textcolor(15);write('Int, ��⥫����');
gotoxy(x+2, 8);if cy= 8 then textcolor(14) else textcolor(15);write('Wis, ������');
gotoxy(x+2, 9);if cy= 9 then textcolor(14) else textcolor(15);write('Cha, ���ﭨ�');
gotoxy(x+2,10);if cy=10 then textcolor(14) else textcolor(15);write('Lck, ����');
gotoxy(x+2,11);if cy=11 then textcolor(14) else textcolor(15);write('��४�����');
gotoxy(x+2,12);if cy=12 then textcolor(14) else textcolor(15);write('Ok');
gotoxy(x+21,3);textcolor(15);write(stats[1],'   ');
gotoxy(x+21,4);textcolor(15);write(stats[2],'   ');
gotoxy(x+21,5);textcolor(15);write(stats[3],'   ');
gotoxy(x+21,6);textcolor(15);write(stats[4],'   ');
gotoxy(x+21,7);textcolor(15);write(stats[5],'   ');
gotoxy(x+21,8);textcolor(15);write(stats[6],'   ');
gotoxy(x+21,9);textcolor(15);write(stats[7],'   ');
gotoxy(x+21,10);textcolor(15);write(stats[8],'   ');
infostat(cy-2,27,3);
gotoxy(x+2,cy);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy:=cy+1;if (c='8')or(c=#72) then cy:=cy-1;
if cy<minmenu then cy:=maxmenu;if cy>maxmenu then cy:=minmenu;

if (c=#13)and(cy=11) then genstats(stats);

if (c=#13)and(cy<11) then
begin;
cy1:=cy;
repeat
textcolor(15);
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
for i:=minmenu to maxmenu do begin;gotoxy(x+19,i);write('  ');end;
gotoxy(x+19,cy1);textcolor(4);write('->');
gotoxy(x+2, 3);if cy=3 then textcolor(14) else textcolor(15);write('Str, ����');
gotoxy(x+2, 4);if cy=4 then textcolor(14) else textcolor(15);write('Dex, ��������');
gotoxy(x+2, 5);if cy=5 then textcolor(14) else textcolor(15);write('Con, �뭮᫨�����');
gotoxy(x+2, 6);if cy=6 then textcolor(14) else textcolor(15);write('Per, �����⨥');
gotoxy(x+2, 7);if cy=7 then textcolor(14) else textcolor(15);write('Int, ��⥫����');
gotoxy(x+2, 8);if cy=8 then textcolor(14) else textcolor(15);write('Wis, ������');
gotoxy(x+2, 9);if cy=9 then textcolor(14) else textcolor(15);write('Cha, ���ﭨ�');
gotoxy(x+2,10);if cy=10 then textcolor(14) else textcolor(15);write('Lck, ����');
gotoxy(x+2,11);textcolor(15);write('��४�����');
gotoxy(x+2,12);textcolor(15);write('Ok');
gotoxy(x+21,3);if cy1=3 then textcolor(14) else textcolor(15);write(stats[1],'   ');
gotoxy(x+21,4);if cy1=4 then textcolor(14) else textcolor(15);write(stats[2],'   ');
gotoxy(x+21,5);if cy1=5 then textcolor(14) else textcolor(15);write(stats[3],'   ');
gotoxy(x+21,6);if cy1=6 then textcolor(14) else textcolor(15);write(stats[4],'   ');
gotoxy(x+21,7);if cy1=7 then textcolor(14) else textcolor(15);write(stats[5],'   ');
gotoxy(x+21,8);if cy1=8 then textcolor(14) else textcolor(15);write(stats[6],'   ');
gotoxy(x+21,9);if cy1=9 then textcolor(14) else textcolor(15);write(stats[7],'   ');
gotoxy(x+21,10);if cy1=10 then textcolor(14) else textcolor(15);write(stats[8],'   ');
gotoxy(x+21,cy1);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy1:=cy1+1;if (c='8')or(c=#72) then cy1:=cy1-1;
if cy1<minmenu then cy1:=maxmenu-2;if cy1>(maxmenu-2) then cy1:=minmenu;
until c=#13;
changeint(stats[cy-2],stats[cy1-2]);
{hlp:=stats[cy-2];
stats[cy-2]:=stats[cy1-2];
stats[cy1-2]:=hlp;}
end;
if (c=#13)and(cy=12) then begin;chooseaddstat({st,dex,con,int,wis,cha,lck,race,class,name,}stats,vihod);clrscr;end;
until (vihod=1)or(c=#27);
end;
{==================================================}
procedure gensex({var st,dex,con,int,wis,cha,lck,race,class,sex:integer;var name:string;}var vihod:integer);
var maxmenu,minmenu,i,x,cy:integer;
    c:char;
begin;
clrscr;gotoxy(1,1);textcolor(7);
write('������ �롥�� ��� ���, �᫨ �� � ��� �� ��।�������, ����� �������� ᤥ����');
gotoxy(1,2);textcolor(7);write('�� �� ���');
maxmenu:=5;minmenu:=3;x:=1;cy:=3;
repeat
gotoxy(1,1);textcolor(7);
write('������ �롥�� ��� ���, �᫨ �� � ��� �� ��।�������, ����� �������� ᤥ����');
gotoxy(1,2);textcolor(7);write('�� �� ���');
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
gotoxy(x,cy);textcolor(4);write('->');
gotoxy(x+2,3);if cy=3 then textcolor(14) else textcolor(15);write(chr(11),' ��稭�');
gotoxy(x+2,4);if cy=4 then textcolor(14) else textcolor(15);write(chr(12),' ���騭�');
gotoxy(x+2,5);if cy=5 then textcolor(14) else textcolor(15);write('���砩��');
gotoxy(x+2,cy);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy:=cy+1;if (c='8')or(c=#72) then cy:=cy-1;
if cy<minmenu then cy:=maxmenu;if cy>maxmenu then cy:=minmenu;
if c=#13 then begin;choosestats({st,dex,con,int,wis,cha,lck,race,class,name,}vihod);clrscr;end;
until (vihod=1)or(c=#27);
if cy=3 then h.sex:=1;
if cy=4 then h.sex:=2;
if cy=5 then h.sex:=random(2)+1;
end;
{==================================================}
procedure genbirth({var month,day:integer;}var mess:string);
var x:integer;
begin;
clrscr;x:=1;h.month:=random(12)+1;h.day:=random(28)+1;
case h.month of
1:mess:='�ࠪ���';2:mess:='�����ண�';3:mess:='�����';4:mess:='��ᨫ�᪠';5:mess:='����';6:mess:='��䮭�';
7:mess:='����';8:mess:='�좠';9:mess:='����';10:mess:='��蠤�';11:mess:='��஭�';12:mess:='���';end;
clrscr;textcolor(7);
gotoxy(x,1);write('�� த����� � ����� ',mess,' � ',h.day,' ����');
gotoxy(x,2);write('������ �� ���: ���');
readok(x,3);
end;
{==================================================}
procedure generatechar{(var st,dex,con,int,wis,cha,lck,race,class,month,day,sex:integer;var name:string)};
var vihod,maxmenu,minmenu,x,i,i1,min,minn,cy,cy1,rnd1,rnd2,rnd3,rnd4,hlp:integer;
    mess,nameprof,namerace,sexname:string;
    c:char;
    stats:statarr;
    f:text;
    p:boolean;
{    chnames:array[1..10]of string;}
begin;
genbirth({month,day,}mess);vihod:=0;
gensex({st,dex,con,int,wis,cha,lck,race,class,sex,name,}vihod);
if vihod=1 then
begin;
sexname:=sexes[h.sex];
nameprof:=classes[h.prof];
namerace:=races[h.race];
x:=1;
clrscr;textcolor(7);gotoxy(1,1);write('������� �e�ᮭ��� �����祭�');textcolor(15);
gotoxy(x+2,2); write('���:          ',h.name);
gotoxy(x+2,3); write('���:          ',sexname);
gotoxy(x+2,4); write('�����:        ',mess);
gotoxy(x+2,5); write('���:         ',namerace);
gotoxy(x+2,6); write('������:    ',nameprof);
gotoxy(x+2,7); write('����:         ',h.st.unm);
gotoxy(x+2,8); write('��������:     ',h.dex.unm);
gotoxy(x+2,9); write('�뭮᫨�����: ',h.con.unm);
gotoxy(x+2,10); write('��⥫����:    ',h.int.unm);
gotoxy(x+2,11); write('������:     ',h.wis.unm);
gotoxy(x+2,12);write('���ﭨ�:      ',h.cha.unm);
gotoxy(x+2,13);write('����:        ',h.lck.unm);
readok(x,14);
{assign(f,dirname+'gamedata/saves/chars.'+filname);reset(f);i:=0;
repeat i:=i+1;readln(f,chnames[i]);until eof(f);close(f);
rewrite(f);i:=i+1;p:=true;
for i1:=1 to i-1 do if chnames[i1]=chnames[i] then p:=false;
if p=true then begin;chnames[i]:=name+'.her';end else i:=i-1;
for i1:=1 to i do writeln(f,chnames[i1]);close(f);}
h.st.now:=h.st.unm;  h.st.mmd:=0; h.st.nmd:=0;
h.dex.now:=h.dex.unm;h.dex.mmd:=0;h.dex.nmd:=0;
h.con.now:=h.con.unm;h.con.mmd:=0;h.con.nmd:=0;
h.per.now:=h.per.unm;h.per.mmd:=0;h.per.nmd:=0;
h.int.now:=h.int.unm;h.int.mmd:=0;h.int.nmd:=0;
h.wis.now:=h.wis.unm;h.wis.mmd:=0;h.wis.nmd:=0;
h.cha.now:=h.cha.unm;h.cha.mmd:=0;h.cha.nmd:=0;
h.lck.now:=h.lck.unm;h.lck.mmd:=0;h.lck.nmd:=0;
h.st.max:=h.st.unm + random(6)+6;
h.dex.max:=h.dex.unm + random(6)+6;
h.con.max:=h.con.unm + random(6)+6;
h.per.max:=h.per.unm + random(6)+6;
h.int.max:=h.int.unm + random(6)+6;
h.wis.max:=h.wis.unm + random(6)+6;
h.cha.max:=h.cha.unm + random(6)+6;
h.lck.max:=h.lck.unm + random(6)+6;
h.hp.max:=h.st.now+h.con.now-10;
h.hp.now:=h.hp.max;
h.mp.max:=0;h.mp.now:=0;
h.att:=(h.dex.now-10)div 2;
h.uvert:=10+(h.dex.now-10)div 2;

{assign(f,dirname+'gamedata/saves/'+h.name+'.her');rewrite(f);
writeln(f,h.name);writeln(f,h.sex);writeln(f,h.month);writeln(f,h.race);writeln(f,h.prof);
writeln(f,h.st.unm,' ',h.dex.unm,' ',h.con.unm,' ',h.int.unm,' ',h.wis.unm,' ',h.cha.unm,' ',h.lck.unm);
writeln(f,(1782)*10+3+h.st.unm*10+h.dex.unm+h.int.unm*100);writeln(f,0);close(f);}
savechar(h,0,0);
end
else h.name:='lamer';
end;
{===================================================}
procedure titlename;
begin;
clrscr;textcolor(4);gotoxy(1,1);write('deGENeration, ',progversion);
end;
{===================================================}
procedure loadgame({var st,dex,con,int,wis,cha,lck,race,class,month,day,sex:integer;}var gold:longint;{var name:string;}
var hodi:longint);
var f:text;
    chnames:array[1..21]of string;
    savename:string;
    i,vihod,maxmenu,minmenu,x,cy:integer;
    c:char;
    DirInfo:SearchRec;
label endofproc;
begin;
{assign(f,dirname+'gamedata\saves\chars.'+filname);reset(f);i:=0;
repeat i:=i+1;readln(f,chnames[i]);until eof(f);close(f);}
for i:=1 to 21 do chnames[i]:='';

i:=0;FindFirst(progdir+'gamedata\saves\*.her',1,DirInfo);
while DosError = 0 do
begin
i:=i+1;chnames[i]:=dirinfo.name;
FindNext(DirInfo);
end;

if pos('.HER',chnames[1])=0 then begin;
titlename;textcolor(14);gotoxy(3,2);write('�த������ ����                         ');
textcolor(6);gotoxy(1,3);write('�� ������� �� ������ 䠩�� ��࠭����� ����');
readok(1,4);goto endofproc;
end;

titlename;textcolor(14);gotoxy(3,2);write('�த������ ����                         ');
textcolor(6);gotoxy(3,3);write('�롥�� 䠩� ��࠭����� ����');
vihod:=0;maxmenu:=3+i;minmenu:=4;x:=1;cy:=4;
repeat
textcolor(14);gotoxy(3,2);write('�த������ ����                         ');
textcolor(6);gotoxy(3,3);write('�롥�� 䠩� ��࠭����� ����          ');
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
gotoxy(x,cy);textcolor(4);write('->');
for i:=minmenu to maxmenu do
begin;gotoxy(x+2,i);if cy=i then textcolor(14) else textcolor(15);write(chnames[i-3]);end;
gotoxy(x+2,cy);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy:=cy+1;if (c='8')or(c=#72) then cy:=cy-1;
if cy<minmenu then cy:=maxmenu;if cy>maxmenu then cy:=minmenu;
if c=#13 then vihod:=1;
until (vihod=1)or(c=#27);
savename:=chnames[cy-3];

if vihod=1 then
begin;
{assign(f,dirname+'gamedata/saves/'+savename);reset(f);
readln(f,h.name);readln(f,h.sex);readln(f,h.month);readln(f,h.race);
readln(f,h.prof);readln(f,h.st.unm,h.dex.unm,h.con.unm,h.int.unm,h.wis.unm,h.cha.unm,h.lck.unm);readln(f,gold);
gold:=(gold-h.st.unm*10-3-h.dex.unm-h.int.unm*100)div 10 -1782;readln(f,hodi);close(f);}
h.name:=copy(savename,1,length(savename)-4);loadchar(h,gold,hodi);
end;
endofproc:
end;
{===================================================}
procedure authors;
begin;titlename;
gotoxy(3,2);textcolor(14);write('�� �����                                  ');
gotoxy(1,3);textcolor(6);write('[ArX] inc. ');
gotoxy(1,4);textcolor(6);write('����騩 �ணࠬ����: ����ᠭ�� �����');
gotoxy(1,5);textcolor(6);write('�ᯮ����⥫�� �ணࠬ�����: ����� �����, �������� ����');
gotoxy(1,6);textcolor(6);write('����騩 ��������: ����ᠭ�� �����');
gotoxy(1,7);textcolor(6);write('�ᯮ����⥫�� ���������: ����� �����, �������� ����');
gotoxy(1,8);textcolor(6);write('������� � ���ᨨ');
readok(1,9);
end;
{===================================================}
procedure options;
var minmenu,maxmenu,x,cy,i,cy1,minmenu1,maxmenu1:integer;
    c:char;
    f:text;
    fint:file of boolean;
begin;
clrscr;titlename;gotoxy(3,2);textcolor(14);write('��樨                            ');
maxmenu:=6;minmenu:=3;x:=1;cy:=3;
repeat
gotoxy(3,2);textcolor(14);write('��樨                                  ');
for i:=minmenu to maxmenu do begin;gotoxy(x,i);write('  ');end;
gotoxy(x,cy);textcolor(4);write('->');
gotoxy(x+2,3);if cy=3 then textcolor(14) else textcolor(15);write('������ ⠡���� ४�म�');
gotoxy(x+2,4);if cy=4 then textcolor(14) else textcolor(15);
if curson=true then write('�����:��� ') else write('�����:�몫');
gotoxy(x+2,5);if cy=5 then textcolor(14) else textcolor(15);
if grzast=true then write('���⠢��:����᪠�') else write('���⠢��:����⮢��  ');
gotoxy(x+2,6);if cy=6 then textcolor(14) else textcolor(15);write('Ok');
gotoxy(x+2,cy);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy:=cy+1;if (c='8')or(c=#72) then cy:=cy-1;
if cy<minmenu then cy:=maxmenu;if cy>maxmenu then cy:=minmenu;

if (c=#13)and(cy=4)then
begin;
if curson=true then begin;curson:=false;curoff(curson);end
else begin;curson:=true;curon(curson);end;
end;

if (c=#13)and(cy=5)then
begin;if grzast=true then grzast:=false else grzast:=true;end;

if (c=#13)and(cy=3)then
begin;
clrscr;titlename;gotoxy(3,2);textcolor(6);write('��樨 ->');textcolor(14);write('������ ⠡���� ४�म�');
gotoxy(3,3);textcolor(6);write('�� 㢥७�?');cy1:=4;minmenu1:=4;maxmenu1:=5;
repeat
for i:=minmenu1 to maxmenu1 do begin;gotoxy(x,i);write('  ');end;
gotoxy(x,cy1);textcolor(4);write('->');
gotoxy(x+2,4);if cy1=4 then textcolor(14) else textcolor(15);write('���');
gotoxy(x+2,5);if cy1=5 then textcolor(14) else textcolor(15);write('��');
gotoxy(x+2,cy1);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy1:=cy1+1;if (c='8')or(c=#72) then cy1:=cy1-1;
if cy1<minmenu1 then cy1:=maxmenu1;if cy1>maxmenu1 then cy1:=minmenu1;
until (c=#13);
if cy1=5 then begin;
gotoxy(3,3);textcolor(6);write('������ ४�म� ��饭�.');
gotoxy(1,4);write('        ');gotoxy(1,5);write('        ');readok(1,4);c:=' ';
assign(f,progdir+'gamedata\hiscores.'+filname);rewrite(f);
for i:=1 to 20 do begin;writeln(f,'');writeln(f,'');writeln(f,'');writeln(f,0);end;close(f);end;
end;
until ((c=#13)and(cy=6))or(c=#27);
assign(fint,progdir+'gamedata\sets.'+filname);rewrite(fint);write(fint,curson);write(fint,grzast);close(fint);
end;
{===================================================}
procedure showscores;
var f:text;
    s1,s2,s3:string;
    i,g:integer;
begin;titlename;
gotoxy(3,2);textcolor(14);write('������:');
gotoxy(1,3);textcolor(6);write(' # ���        ���         ������        ����祩 㡨�                                ');
assign(f,progdir+'gamedata\hiscores.'+filname);reset(f);
for i:=1 to 20 do begin;
readln(f,s1);readln(f,s2);readln(f,s3);readln(f,g);textcolor(6);gotoxy(1,3+i);write(i:2,'.',s1);
gotoxy(15,3+i);write(s2);
gotoxy(28,3+i);write(s3);
if g>500 then textcolor(4) else if g>300 then textcolor(14) else if g>100 then textcolor(6) else textcolor(2);
gotoxy(45,3+i);if g<>0 then write(g);
end;
close(f);
readok(1,24);
end;
{===================================================}
procedure pleasehelp;
begin;titlename;
gotoxy(3,2);textcolor(14);write('��ࠢ�����');
gotoxy(1,3);textcolor(6);write('[');textcolor(14);write('>');textcolor(6);write('] ��������� ����');
gotoxy(1,4);textcolor(6);write('[');textcolor(14);write('<');textcolor(6);write('] ��������� �����');
gotoxy(1,5);textcolor(6);write('[');textcolor(14);write(',');textcolor(6);write('] ��������');
gotoxy(1,6);textcolor(6);write('[');textcolor(14);write('c');textcolor(6);write('] ������� �����');
gotoxy(1,7);textcolor(6);write('[');textcolor(14);write(']');textcolor(6);write('] ��५������ ᮮ�饭�� ���।');
gotoxy(1,8);textcolor(6);write('[');textcolor(14);write('[');textcolor(6);write('] ��५������ ᮮ�饭�� �����');
gotoxy(1,9);textcolor(6);write('[');textcolor(14);write('Esc');textcolor(6);write('] ��� � ��࠭�����');
gotoxy(1,10);textcolor(6);write('[');textcolor(14);write('t');textcolor(6);write('] ������ ⥪���� ����');
gotoxy(1,11);textcolor(6);write('[');textcolor(14);write('1');textcolor(6);write('] ��������� �� -�����');
gotoxy(1,12);textcolor(6);write('[');textcolor(14);write('2');textcolor(6);write('] ��������� �� �');
gotoxy(1,13);textcolor(6);write('[');textcolor(14);write('3');textcolor(6);write('] ��������� �� -���⮪');
gotoxy(1,14);textcolor(6);write('[');textcolor(14);write('4');textcolor(6);write('] ��������� �� �����');
gotoxy(1,15);textcolor(6);write('[');textcolor(14);write('6');textcolor(6);write('] ��������� �� ���⮪');
gotoxy(1,16);textcolor(6);write('[');textcolor(14);write('7');textcolor(6);write('] ��������� �� ᥢ��-�����');
gotoxy(1,17);textcolor(6);write('[');textcolor(14);write('8');textcolor(6);write('] ��������� �� ᥢ��');
gotoxy(1,18);textcolor(6);write('[');textcolor(14);write('9');textcolor(6);write('] ��������� �� ᥢ��-���⮪');
readok(1,19);
end;
{===================================================}
procedure startmenu(var h1:character{st,dex,con,int,wis,cha,lck,race,class,month,day,sex:integer};var gold:longint;
{var name:string;}var hodi:longint);
var c:char;
    x,i,maxmenu,minmenu,cy:integer;
begin;
clrscr;
gold:=0;hodi:=0;h.name:='lamer';
maxmenu:=8;
minmenu:=2;
x:=1;
cy:=2;
repeat
titlename;
textcolor(15);for i:=2 to maxmenu do begin;gotoxy(x,i);write('  ');end;
gotoxy(x,cy);textcolor(4);write('->');
gotoxy(x+2,2);if cy=2 then textcolor(14) else textcolor(15);write('������� ���ᮭ��');
gotoxy(x+2,3);if cy=3 then textcolor(14) else textcolor(15);write('�த������ ����');
gotoxy(x+2,4);if cy=4 then textcolor(14) else textcolor(15);write('��樨');
gotoxy(x+2,5);if cy=5 then textcolor(14) else textcolor(15);write('������');
gotoxy(x+2,6);if cy=6 then textcolor(14) else textcolor(15);write('������');
gotoxy(x+2,7);if cy=7 then textcolor(14) else textcolor(15);write('�� �����');
gotoxy(x+2,8);if cy=8 then textcolor(14) else textcolor(15);write('��室');
gotoxy(x+2,cy);c:=readkey;if c=#0 then c:=readkey;
if (c='2')or(c=#80) then cy:=cy+1;if (c='8')or(c=#72) then cy:=cy-1;
if cy<minmenu then cy:=maxmenu;if cy>maxmenu then cy:=minmenu;
if (c=#27)or((cy=8)and(c=#13)) then begin;clrscr;gotoxy(1,23);textcolor(7);write('�� ᫥���饩 �����!');halt;end;
if c=#13 then begin;
if cy=2 then generatechar{(st,dex,con,int,wis,cha,lck,race,class,month,day,sex,name)};
if cy=3 then loadgame({st,dex,con,int,wis,cha,lck,race,class,month,day,sex,}gold,{name,}hodi);
if cy=4 then options;
if cy=5 then showscores;
if cy=6 then pleasehelp;
if cy=7 then authors;

clrscr;
end;
until ((c=#13)and(cy=8))or(c=#27)or(h.name<>'lamer');
h1:=h;
end;
{===================================================}
procedure endall(h1:character;{st,dex,con,int,wis,cha,lck,race,class,month,day,sex:integer;}gold:longint;
{name:string;}hodi:longint);
var f:text;
    hlp,i,i1:integer;
    s:string;
    a:array[1..3,1..21]of string;  {1-name 2-race 3-class}
    score:array[1..21]of integer;
begin;
h:=h1;
assign(f,progdir+'gamedata\hiscores.'+filname);reset(f);clrscr;
score[21]:=gold;
textcolor(15);gotoxy(1,1);write(h.name,', �� 㡨�� ',score[21],' ����祩');readok(1,2);
a[1,21]:=h.name;a[2,21]:=races[h.race];a[3,21]:=classes[h.prof];
for i:=1 to 20 do begin;readln(f,a[1,i]);readln(f,a[2,i]);readln(f,a[3,i]);readln(f,score[i]);end;
for i:=1 to 20 do for i1:=i to 21 do
if score[i1]>score[i] then
begin;changeint(score[i],score[i1]);changestr(a[1,i],a[1,i1]);
changestr(a[2,i],a[2,i1]);changestr(a[3,i],a[3,i1]);end;
clrscr;
close(f);rewrite(f);
for i:=1 to 20 do begin;writeln(f,a[1,i]);writeln(f,a[2,i]);writeln(f,a[3,i]);writeln(f,score[i]);end;close(f);

assign(f,progdir+'gamedata/saves/'+h.name+'.her');
if hodi<5000 then begin;
savechar(h,gold,hodi);
end else erase(f);
showscores;
end;
{===================================================}
procedure getdirname(drname,flname:string);
begin;progdir:=drname;filname:=flname;end;
{===================================================}
procedure splashscreen(dlay:integer);
var a,b,i:integer;
    f:text;
    s:string;
begin;
clrscr;curoff(curson);

if grzast=false then begin;
assign(f,progdir+'gamedata\loadgame.'+filname);reset(f);textcolor(14);readln(f);
for i:=1 to 24 do
begin;gotoxy(1,i);readln(f,s);write(s);end;
gotoxy(1,25);textcolor(15);write('Press any key...');readkey;end;

if grzast=true then begin;
chdir(progdir+'gamedata\graph');
a:=detect;initgraph(a,b,'');
settextstyle(1,0,4);setcolor(14);
outtextxy(180,0,'[ArX] inc. presents');
settextstyle(4,0,8);setcolor(4);
outtextxy(90,50,'DeGENeration');
settextstyle(0,0,1);setcolor(15);
outtextxy(500,460,'press any key...');
for i:=-100 to 640 do begin;if i>0 then putpixel(i,1,15);delay((dlay div 3)*2);if keypressed then break;end;
if keypressed then readkey;closegraph;chdir(progdir);end;
end;
{===================================================}
procedure loadingdata(dlay:integer);
var i:integer;
    f:text;
    s:string;
begin;
clrscr;gotoxy(1,2);textcolor(15);write('Loading game data...');
{for i:=21 to 80 do begin;gotoxy(i,1);write('.');delay(dlay*2);end;}
end;
{===================================================}
procedure initoptions;
var fint:file of boolean;
begin;
assign(fint,progdir+'gamedata\sets.'+filname);reset(fint);read(fint,curson);read(fint,grzast);close(fint);
if curson=true then curon(curson) else curoff(curson);
end;
{==================================================}
begin;
end.

