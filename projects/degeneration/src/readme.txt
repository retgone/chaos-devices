//======================== ������ =======================\\
��� ������������ ����������� �������zzzzzzzzzzz������ ���� DeGeneration ����� ��������� ��������, ����� ��������� ��� [ArX]Elric!. ���� �� ������ �������������� ��� ������, �� ���� ����� ������� ���!


//======================== ������ =======================\\
� ������ ������ ����� gamefold.txt �������� ������ ���� � ������������ ����� (����� ������ �����). �� ����� ��������� ����.
��������: D:/games/rulez/gen/
�.�. ����� �� �������� - ����� � ��������.

//======================= ��������� =====================\\
// ��� �����
��� ����� ����� �������� ���������������� ���������. ����� ��� � ����������� source �������� ����. ��� ��������� �����:
Gen1_1_6.pas - �������� ���� �����
Geninfo.pas - ����, ���������� ��������� �������������� ���������
Strtmenu.pas - ����� ����� ��������� ����
Useful.pas - � ����� - ��������� �������� ������� (��������, ������� integer � string)


//===================== ����������� =====================\\
// ��� �� ���� ������������ ������ ����� �����
��� ������ �����, ����� ���������, ����� � ����������� gamedata �������� ����. ��� ��������� �����:
alltexts.dat - ����� ����� ��� ��������� ��������� ����. ���������� ���� ���� �� ����������. ������������� Far'��.
hiscores.dat - ����� ����� ������� ��������. ���� ���� ����������� ���������� ����������. ���������� ��� �� �������������.
loadgame.dat - ����� �� ������� ��������� ����������� �������� (��������� � ��������� ������). ������������� ��� Far'��, ��� � ���������.
sets.dat - ��� �������������� ����, � ������� �������� ����-������������ boolean ����������, ���������� �� ����������� ������� � ����.
����� ������� �����������:
graph/*.* - ����� ����� ����������� �������, ���������� ������ ��� ������ � �������� � ��������� ������ �������.
saves/chars.dat - ��� ������ ���� ����������. ������������ ��� ������ (���� Paint'��). ���� ��� ���������� ������� �����-���� ����, �� ������� ������� ���� ����������, � ����� ������� �� �������� �� ����� �����.
saves/*.her - ����� ����������. ���� �� �� �����, �� �� ������������. ���� �� ��������� � ���� �� ������� �� ������, �� �������� ��������� ���� ������ ����.

// ��������� ������ ������ �����
 => alltexts.dat
���� ���� �������� 13 ����� + ������� ������,  �  ������� ���������� 80 ��������. ������������ ��� ��� ��������� ��������� ��������� ����. � ��������� ������� ����������� ����, ����� ������, ��� ��� ��� ������ ��� �������� ������� � ������ [0..�������-�� ���]of string � ����� �� ���� ��� ������������� �����������.
 => hiscores.dat
���� ���� �������� 20 ����� - �� 2 ������ �� ������� ����� ������� ��������. ����������� � ��� ������������� �� �����. ������������ ������� ��������� �������: � 1-�� ������ ������� ���, �� 2-�� - ��������� ����, � ��� ��� ���� ������������.
 => loadgame.dat
No comments. �������� � ���� ��� �������.
 => sets.dat
��� �������� ������� ����.
 => saves/chars.dat
����� �������� �������� ���� ������ ����������� ���. ������ �������� ������� � ����� ������. �������� �� �������������!
 => saves/*.her
���, ��� �� ��� ������, �����. ������ �����:
������ 1. ��� ���������.
������ 2. ��� ��������� � �������� ���� (1-�����, 2-��������).
������ 3. ����� �������� ���������. ����� �������, ��� �������� ����������, 12 ����.
������ 4. ���� ��������� � �������� ����. ����������� ������ � ����������.
������ 5. ����� ��������� � �������� ����. ����������� ������ � ����������.
������ 6. ��� �������������� ���������, ���������� ����� ������ � ��������� ������������������: str, dex, con, int, wis, cha, lck. ����������� ����������� ������ � ����������.
������ 7. ���������� ���������� ������ (������ �������!).


//======================= ������� =======================\\
// ������� ����� Gen1_1_6.pas:
 => type levarr=array[1..80,4..23] of shortint
������, ������������ ������ ��� ��������� �������� ������, ����� �������������� � allevarr. ��������� ����� ��, ��� � � ������� ���� allevarr.
 => type allevarr=array[1..80,4..23,1..3] of shortint
������ �������� ������ �������� 80*19. � ���� 1 ����� �� �������������. ������ �����: 1 - ������ ������ �����; 2 - ���; 3 - ���� � ����������; 4 - ����� �� ����������; 5 - �������� �����; 6 - �������� �����. � ���� 2 ����� ������, ������ �.�. ��� shortint, �� 1-� ������ ����������, � ��������� � ������ �������� ����� � �����. �������� ���� � ����� �������� 25, �� � ������ ���� ���� �������� 250-259 �����.
 => type alltextarr=array[0..20] of string
��� ������ ���� ��������� ��������� ����. ����������� ������� �� ����� alltexts.dat ���������� inittext
 => type allechoarr=array[0..100] of string
��� ������ ������� ��������� ���������, ���������� ������.
 => type statsarr=array[1..12,1..4] of shortint
����� �������� ��� ��������������. ������ ������ ���� (��������� makestats).

// ������� ����� Strtmenu.pas:
type statarr=array[1..7]of integer
��� ������������ ������������ ������ (������������ ��� ������������ �������������).


//====================== ��������� ======================\\
// ��������� ����� Gen1_1_6.pas:
 => const dlay=10
��������� ��� ��������� delay. �������������� �������� � ����������� �� ������������������ �����.
 => const sfilname='dat'
���������� ��������� ������ ����.

// ��������� ����� Strtmenu.pas:
 => const progversion='v1.16b'
����������� ���� :-P
 => const sexarr:array[1..2] of string[20]=...
    profarr:array[1..16] of string[20]=...
    racearr:array[1..10] of string[20]=...
��� �������� ���� �����, ������� � ���.


//====== ���������� ������� � ����������� ������� =======\\
// ������� ����� Gen1_1_6.pas:
 => procedure makestats(st,dex,con,int,wis,cha,lck:integer;var stats:statsarr)
����� ��� �������������� � ������ 12*4. ��������� HP, SP, AC, ���� �������� ���, ���� �������� ���. ��������������, ��� ������� 1 - ��� ����������� ��������� ��������, ������� 2 - ����������� ��������� (������ ��� ����� 1-7, ���������� �������������� �����. ���� �� ������������ ����� �������� � ����������� ������ D&D 3ed), ������� 3 - ������� �������� ��������� (����������� ��������� + ���������), ������� 4 - ������� ��������� ��������� (��������, �� ��������� ��� �������). ������� ���� �� ��������, ������ ����� �� ������������, � ������� �������������� �������������.
 => procedure sysdrawwall(level:levarr;tx,ty:integer)
��������� �������������� ��� ������� ��������� ���������. ������� �� ����� ������� ����� ������ � ������ ������� � ����� � ������������ (tx,ty). 
 => function innear(sloi,n,x,y,rad:integer;lev:allevarr):integer
������� � ���� sloi ����� ������ lev ���-�� ���������, ��������� �� ����� � ������������ (x,y) �� ���������� rad, � ������ n.
������������ �����, �������� �� ��������������.
 => procedure generate(var level:levarr;var enx,eny:integer)
��������� ��������� ������. ���������� ���������� ��������� ������ �� ����� - (enx,eny), � ��� ������� level � ������� levarr. ������� ��������� �� ����, ��� ����� ����� ������ �� ������.
 => procedure genmoney(var level:allevarr)
������������ �� ����� ������.
 => procedure gendoors(var lev:allevarr)
������ �� ����� �����.
 => procedure drawlev(level:allevarr)
������� ������� ����� ������ �� �����.
 => procedure syscopy(lev:levarr;n:integer)
������������ ���������� lev ������� levarr � ������ allevarr, ��������� �� � n-�� ���� ���������� ���������� �������� ������.
 => procedure letmeseeit(x,y:integer)
����������� ����� ���������.
 => procedure nullalllevel(var lev:allevarr)
�������� ���� ������� ����� ����������. ������� ��� ������������ �� ������.
 => procedure nullallechos(var echos:allechoarr)
���������� �����������, �� �������� ������ ��������� ���������.
 => procedure inittext
����� � ������ ��� ��������� ��������� ��������� ���� (�� ����� alltexts.dat)
 => procedure addecho(st:string;var nofecho:integer;typeecho:integer)
��������� ��������� ��������� st. ��������� ������� ��������� ��������� ��������� nofecho � ���������� ���������. typeecho - ��� ���������� ��������� (0 - �� ����� ������ ���������, �� ���������� � ������, �������� � ����� ����, 1 - ������ ���������, ���������� � ������)
 => procedure writeecho(var n:integer)
������� �� ����� �� ������ ��������� ��������� �� ���������, ������� ��������� �� � �� ��������� ��������� ��������� n.
 => function yesnoquest(quest:string;var nofecho:integer):boolean
������ ������ quest, ��������� ��������� ��������� ��������� ��������� (�� ���� ������ ��������� addecho) nofecho �� ��������� ��������� ��������� (�� ���� �� ���� ������). ���� ������� y/n, ���������� ����� � boolean.
 => procedure directionsel(var dirx,diry,nofecho:integer)
���������� �����������, ������ ������ ������ ���� � ��� �� ������ - ������ ������� �����������. ����� ��������� ��������� ��������� ��������� ��������� (�� ���� ������ ��������� addecho). ���������� ����������� � ���� ����������. dirx - ��������� �� x, diry - ��������� �� y.
 => procedure drawinterface(stats:statsarr;gold:longint)
������� � ������ ������ ������ ���������� � ��������/����/�����/������/������. 

// ������� ����� Useful.pas:
 => procedure changeint(var ch1,ch2:integer)
������ ������� ��� integer ����������.
 => procedure changestr(var ch1,ch2:string)
������ ������� ��� string ����������.
 => function  makestr(ch:integer):string
��������� ����� ch � ������, ������� � ����������.
 => function  makeint(st:string):integer
��������� ������ st � �����, ������� � ����������.
 => procedure curoff(b:boolean)
���� b=false, ��������� ������ (b - ��������� ������������ �������).
 => procedure curon(b:boolean)
�������� ������ (���������, ����� � ��������� ���� b?).

// ������� ����� Geninfo.pas:
 => procedure infostat(stat,x,y:integer)
� ����� � ������������ (x,y) ������ ����������� � �������������� ��������� ����� stat. ����������� ������ � ����������.

// ������� ����� Strtmenu.pas:
procedure startmenu(var st,dex,con,int,wis,cha,lck,race,class,month,day,sex:integer;var gold:longint;var name:string)
��������� ��������� ����, � ������� ����� ��������. ����������� � ��� �� �������� �����.
procedure readok(x,y:integer)
� ����� � ������������ (x,y) ��������� ����� ���� "Ok", � ������, ����������� �� ���� �����. ���� �� ������� Enter (�� ���� ok), �� ��������� �� �������.
procedure endall(st,dex,con,int,wis,cha,lck,race,class,month,day,sex:integer;gold:longint;name:string)
���������� ����� ���������� ����, ��������� ����, ������������ ������� �������� � ����������� ��� � ��������� ����.
procedure getdirname(drname,flname:string)
�������� ���� ����������� ������� ���� � ���������� ����.
procedure loadingdata(dlay:integer)
���������� ��������� ��������� ��� �������� - "Loading game data...".
procedure splashscreen(dlay:integer)
���������� ����������� �����.
procedure initoptions
�������� ���� ����� � ��� ��� ��� �������� ���������� � �����.


//======== ���������� (����������� ������ ����) =========\\
// ���
1  = �������
2  = �������

// ����
1  = �������
2  = ����
3  = ������ ����
4  = ������ ����
5  = ����������
6  = ������
7  = ���
8  = ��������
9  = ������
10 = �������

// ������
1  = ����
2  = �������
3  = ��������
4  = ���
5  = ������
6  = ���
7  = ���������
8  = ����
9  = �����
10 = ������
11 = ��������
12 = ������
13 = �������
14 = ������
15 = �����
16 = ���������

// ��������������
1  = str - ����
2  = dex - ��������
3  = con - ������������
4  = int - ���������
5  = wis - ��������
6  = cha - �������
7  = lck - �����

// ������ ��������
1  = �������
2  = ���������
3  = �����
4  = ���������
5  = ����
6  = �������
7  = �����
8  = ����
9  = �����
10 = ������
11 = ������
12 = ����

// ��������� ������� ���� ������� �������� ������
1  = ������ ������ �����
2  = ���
3  = ���� � ����������
4  = ����� �� ����������
5  = �������� �����
6  = �������� �����