unit geninfo;

interface
procedure infostat(stat,x,y:integer);


const months:array[1..12]of  string[10]=('�ࠪ���','�����ண�','�����','��ᨫ�᪠','����','��䮭�','����','�좠','����',
                                          '��蠤�','��஭�','���');
      races:array[1..10]of   string[15]=('�������','����','���訩 ����','����� ����','�����᫨�','�஫��','��','�ࠪ����',
                                          '������','������');
      sexes:array[1..2]of    string[10]=('��稭�','���騭�');
      classes:array[1..16]of string[10]=('����','�������','��������','���','�����','���','���饭���','���','�����','��筨�',
                                          '��࣮���','��ଥ�','�ᨮ���','��ࢠ�','��㨤','���஬���');



implementation
uses crt;
{==================================================}
procedure infostat(stat,x,y:integer);
begin;
textcolor(6);

if stat=1 then
begin;
gotoxy(x,y   );write('����� ��������� ����쭠� � 䨧��᪠� ���� ��襣�  ');
gotoxy(x,y+1 );write('���ᮭ���. �� �ࠪ���⨪� �ᮡ���� ����� ���      ');
gotoxy(x,y+2 );write('������, ��ࢠ஢, ���������, ����客 � ᫥����⮢,    ');
gotoxy(x,y+3 );write('��⮬� �� ������ ��� �������� �� ����������          ');
gotoxy(x,y+4 );write('�ॢ��室�⢠ � ���.                                  ');
gotoxy(x,y+5 );write('                                                      ');
gotoxy(x,y+6 );write('                                                      ');
gotoxy(x,y+7 );write('                                                      ');
gotoxy(x,y+8 );write('                                                      ');
gotoxy(x,y+9 );write('                                                      ');
gotoxy(x,y+10);write('                                                      ');
gotoxy(x,y+11);write('                                                      ');
end;

if stat=2 then
begin;
gotoxy(x,y   );write('��������� ��������� ���न����, �஢���⢮, ॠ��� ');
gotoxy(x,y+1 );write('� ࠢ����ᨥ. �� �ࠪ���⨪� �������� ����� ���   ');
gotoxy(x,y+2 );write('��஢, �� ��� ⠪�� ����� ��� ��� ���ᮭ����, �����');
gotoxy(x,y+3 );write('���筮 ����� ������ ��� �।��� ��ᯥ� ��� ����� ��  ');
gotoxy(x,y+4 );write('����� ��ᯥ客, �� � ��� ���, �� ��� ����       ');
gotoxy(x,y+5 );write('����� ��筨���.                                    ');
gotoxy(x,y+6 );write('                                                      ');
gotoxy(x,y+7 );write('                                                      ');
gotoxy(x,y+8 );write('                                                      ');
gotoxy(x,y+9 );write('                                                      ');
gotoxy(x,y+10);write('                                                      ');
gotoxy(x,y+11);write('                                                      ');
end;

if stat=3 then
begin;
gotoxy(x,y   );write('�뭮᫨����� �।�⠢��� ���஢� � ⥫�᫮�����     ');
gotoxy(x,y+1 );write('��襣� ���ᮭ���. ��� 㢥��稢��� �᫮ �⮢         ');
gotoxy(x,y+2 );write('���ᮭ���, ⠪ �� ���� ������ �ࠪ���⨪�� ���');
gotoxy(x,y+3 );write('������� �᪠⥫� �ਪ��祭��.                         ');
gotoxy(x,y+4 );write('                                                      ');
gotoxy(x,y+5 );write('                                                      ');
gotoxy(x,y+6 );write('                                                      ');
gotoxy(x,y+7 );write('                                                      ');
gotoxy(x,y+8 );write('                                                      ');
gotoxy(x,y+9 );write('                                                      ');
gotoxy(x,y+10);write('                                                      ');
gotoxy(x,y+11);write('                                                      ');
end;

if stat=4 then
begin;
gotoxy(x,y   );write('�����⨥ ����뢠�� ���� ���� ��襣� ���ᮭ���.    ');
gotoxy(x,y+1 );write('�� �����⨥ ������ ���쭮��� �७��, ����� ���,');
gotoxy(x,y+2 );write('����, ����ﭨ� � ��易���. ���ᮭ��� � ������        ');
gotoxy(x,y+3 );write('�����⨥� �� ᬮ��� ������� ᥪ���� �����,       ');
gotoxy(x,y+4 );write('����� ��室���� � ��� ��। ��ᮬ, ��� �� �����   ');
gotoxy(x,y+5 );write('蠣�� ���, ����ࠤ뢠�饣��� ᧠��, �⮡� �ᠤ���    ');
gotoxy(x,y+6 );write('������ �� � ᯨ��, � ��������� ���� �� ᠬ�� ������  ');
gotoxy(x,y+7 );write('������. ���ᮭ��� � ��᮪�� �����⨥� �ᥣ��       ');
gotoxy(x,y+8 );write('����஦�, �� ���⢠ �����७� � ��� ������� ����   ');
gotoxy(x,y+9 );write('ᠬ� ������⥫�� ��⠫�. �����⨥ ����� ��� ���');
gotoxy(x,y+10);write('���ᮭ����, �� � �ᮡ������ ��� ᫥����⮢, ��筨���,');
gotoxy(x,y+11);write('㡨��, ��஢, ��म�, ����客, ��㨤�� � �ᨮ�����.   ');
end;


if stat=5 then
begin;
gotoxy(x,y   );write('��⥫���� ��।����, ��᪮�쪮 �ᯥ譮 ��� ���ᮭ��  ');
gotoxy(x,y+1 );write('����� � ���㦤���. ��⥫���� ����� ��� �����,       ');
gotoxy(x,y+2 );write('�ᨮ����� � ���஬��⮢, ��⮬� �� �� ��।����     ');
gotoxy(x,y+3 );write('������⢮ ����������, ���஥ ��� ����� �ᯮ�짮����,');
gotoxy(x,y+4 );write('��᪮�쪮 ��㤭� ��⨢������ �� ����������, �      ');
gotoxy(x,y+5 );write('��᪮�쪮 ���� �� ����������. �� ⠪�� ����� ���   ');
gotoxy(x,y+6 );write('��� ���ᮭ���,����� ��� ����� ����� 㬥���.    ');
gotoxy(x,y+7 );write('                                                      ');
gotoxy(x,y+8 );write('                                                      ');
gotoxy(x,y+9 );write('                                                      ');
gotoxy(x,y+10);write('                                                      ');
gotoxy(x,y+11);write('                                                      ');
end;

if stat=6 then
begin;
gotoxy(x,y   );write('������⥫� ����� ����뢠�� ���� ���ᮭ���, ��ࠢ� ');
gotoxy(x,y+1 );write('���, �����⨥ � ������. � � �६� ��� ��⥫����');
gotoxy(x,y+2 );write('�।�⠢��� ᯮᮡ����� �������஢��� �����,        ');
gotoxy(x,y+3 );write('������ ����� �易�� � �ᮧ������ � ���⨦�����    ');
gotoxy(x,y+4 );write('��ମ��� � ���㦠�饩 �।��. "����ﭭ� ������"  ');
gotoxy(x,y+5 );write('����� ������ ������ � ��᮪�� ��⥫����. ���⠪    ');
gotoxy(x,y+6 );write('(������ ��⥫����) ����� ����� ��᮪�� ������.      ');
gotoxy(x,y+7 );write('������ - ᠬ�� ������ �ࠪ���⨪� ��� ��饭�����');
gotoxy(x,y+8 );write('� ��㨤��,� ⠪�� ����� ��� ���������, ᫥����⮢,    ');
gotoxy(x,y+9 );write('��筨��� � �ଥ஢. �᫨ �� ���, �⮡� � ��襣�   ');
gotoxy(x,y+10);write('���ᮭ��� �뫨 �����७�� ���⢠, ������� ���      ');
gotoxy(x,y+11);write('��᮪�� �������.                                    ');
end;

if stat=7 then
begin;
gotoxy(x,y   );write('��ਧ��� ��������� ᨫ� ��筮�� ���ᮭ���,          ');
gotoxy(x,y+1 );write('㡥��⥫쭮���, ���ᮭ���� �����⨧�, ᯮᮡ�����   ');
gotoxy(x,y+2 );write('�㪮������ � 䨧��᪠� �ਢ����⥫쭮���. ��ਧ��    ');
gotoxy(x,y+3 );write('�।�⠢��� ��⨭��� ᨫ� ��筮��, �� ��������� ��  ');
gotoxy(x,y+4 );write('⮣�, ��� ���ᮭ�� ���ਭ������� ��㣨�� 童����     ');
gotoxy(x,y+5 );write('��㬠. ��ਧ�� �������� ����� ��� ���������, ��म�,');
gotoxy(x,y+6 );write('�࣮�楢 � �ᨮ�����. ��ਧ�� ⠪�� ����� ���        ');
gotoxy(x,y+7 );write('��饭�����, ⠪ ��� ��� ���������� �� ��           ');
gotoxy(x,y+8 );write('ᯮᮡ����� �������� ������.                          ');
gotoxy(x,y+9 );write('                                                      ');
gotoxy(x,y+10);write('                                                      ');
gotoxy(x,y+11);write('                                                      ');
end;

if stat=8 then
begin;
gotoxy(x,y   );write('���祩 ��������� �, ��� ��� ���ᮭ��� ����� (���  ');
gotoxy(x,y+1 );write('�� �����). �᫨ �� ���易�� ��ન �� ᢮�� ��⨭���  ');
gotoxy(x,y+2 );write('⮫쪮 � �����⮩ ����⪨ - �����, ��� �஡���� �  ');
gotoxy(x,y+3 );write('������ 㤠�. �᫨ �� ��, 㯠� � �⮬��஢�� ᪠��,  ');
gotoxy(x,y+4 );write('��ਫ��� ��祣� �� ᫮����, � �� �����, �� 㤠�');
gotoxy(x,y+5 );write('ᮯ���⢮���� ���. ���� ����� ��� ��� ���ᮭ���,  ');
gotoxy(x,y+6 );write('�� � �ᮡ������ ��� ��஢, 㡨��, ��म�, �࣮�楢 �');
gotoxy(x,y+7 );write('�ଥ஢. �᫨ �� �� ��� � �।��� ���� ��砩��  ');
gotoxy(x,y+8 );write('���㡨�� ᥡ� ��� � ��⮬ ��� ����� 室��� ���������,');
gotoxy(x,y+9 );write('� �� �������� �� 㤠�.                             ');
gotoxy(x,y+10);write('                                                      ');
gotoxy(x,y+11);write('                                                      ');
end;

if stat>8 then
begin;
gotoxy(x,y   );write('                                                      ');
gotoxy(x,y+1 );write('                                                      ');
gotoxy(x,y+2 );write('                                                      ');
gotoxy(x,y+3 );write('                                                      ');
gotoxy(x,y+4 );write('                                                      ');
gotoxy(x,y+5 );write('                                                      ');
gotoxy(x,y+6 );write('                                                      ');
gotoxy(x,y+7 );write('                                                      ');
gotoxy(x,y+8 );write('                                                      ');
gotoxy(x,y+9 );write('                                                      ');
gotoxy(x,y+10);write('                                                      ');
gotoxy(x,y+11);write('                                                      ');
end;


end;
{==================================================}
procedure inforace(race,x,y:integer);
begin;





end;
{==================================================}
begin;
end.