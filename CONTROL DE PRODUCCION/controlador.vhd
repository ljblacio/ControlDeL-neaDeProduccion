library ieee;
use ieee.sTD_logic_1164.all;
use ieee.sTD_logic_unsigned.all;

EnTIty controlador is
	Port(
		 Reset, Clock, START, CAPACIDAD, NUM, FINDIG, ENTER, LISTO, FINMES, MOSTRAR, NDETECTA, OK, FIN :	in std_logic;
 		 DISP12, SDIG, HC, GUARDAR, INC, RDIG, SEL,DISP34,AVANZ  : out std_logic);
end controlador;

ArchiTEcture Control of controlador is
	Type state is (TA, TB, TC, TD, TE, TF, TG, TH, TI, TJ, TK, TL, TM);
	Signal y : state;
Begin
	Process(Reset, Clock)
	Begin
		If Reset = '1' THen y <= TA;
		elsif Clock'event and Clock = '1' THen
			case y is
				when TA => IF START='1' THEN y <= TB; ELSE y<=TA; end if;				
				when TB => If FINDIG = '1' THEN y <= TD; ELSIF NUM='0' THEN y <= TC; else  y <= TB; end if;	
				when TC => If NUM = '1' THEN y<=TB; else  y <= TC; end if;
				when TD => If ENTER = '0' THEN y<=TD; ELSIF CAPACIDAD='1' THEN y<= TE; else  y <= TD; end if;	
				when TE => If LISTO= '1' THen y <= TF; ELSE y<=TE; end if;
  				when TF => y<=TG;			
				when TG => y<=TH;
				when TH => IF FINMES='1' THEN y<=TI; ELSE y<=TA; END IF;
				when TI => IF MOSTRAR='1' THEN y <= TJ; ELSE y<=TI; end if;
				when TJ => IF NDETECTA = '0' THEN y<=TK; else  y <= TJ; end if;
				when TK => IF OK = '1' THEN y<=TL; else  y <= TL; end if;
				when TL => y<=TM;
				when TM => IF FIN = '0' THEN y<=TJ; end if;
				when others => y <= TA;				
			end case;
		end if;
	end Process;

DISP12<='1' WHEN (y=TA or y=TB or y=TC or y=TD or y=TE or y=TF or y=TG or y=TH) else '0';
SDIG<='1' WHEN (y=TC and NUM='0') else '0';
HC<='1' WHEN y=TE else '0';
GUARDAR<='1' WHEN y=TF else '0';
INC<='1' WHEN y=TG else '0';
RDIG<='1' WHEN (y=TH and FINMES='0') else '0';
SEL<='1' WHEN (y=TJ or y=TK) else '0';
DISP34<='1' WHEN y=TH else '0';
AVANZ<='1' WHEN y=TL else '0';
End Control;