LIBRARY IEEE; 

USE IEEE.STD_LOGIC_1164.ALL; 

Entity traffic_light is 

Port(clk, Sa, Sb: in bit; 

Ra, Rb, Ga, Gb, Ya, Yb: inout bit); 

End traffic_light; 

 

Architecture traffic_Arch of traffic_light is 

-- signal to keep track of current and next states
Signal state, nextstate: integer range 0 to 12; 

-- enum type for the traffic light colors
Type light is (R, Y, G); 

-- define SIGNALS to represent colors of TL output 
Signal lightA, lightB: light; 

BEGIN 

-- process to determine next state and control the outputs based on current state and input signals
Process(state, Sa, Sb) 

BEGIN 

-- initialize output signals to default values
Ra <= '0'; Rb <= '0'; Ga <= '0'; Gb <= '0'; 

Ya <= '0'; Yb <= '0'; 

Case state is 

When 0 to 4 => Ga <= '1'; Rb <= '1'; -- State 0 to 4: Green at A, Red at B

nextstate <= state+1; 

When 5 => Ga <= '1'; Rb <= '1'; -- State 5: Green at A, Red at B

If Sb = '1' then 

nextstate <= 6; -- transition to next state if Sb triggers a car

End if; 

When 6 => Ya<= '1'; Rb<= '1'; -- State 6: Yellow at A, Red at B

nextstate <= 7; 

When 7 to 10 => Ra <= '1'; Gb <= '1';  -- State 7 to 10: Red at A, Green at B

nextstate <= state+1; 

When 11 =>Ra <= '1'; Gb <= '1'; 

If (Sa='1' or Sb='0') then 

nextstate <= 12;  -- transition to next state if Sa triggers a car or Sb doesn't trigger any car

End if; 

When 12 => Ra <= '1'; Yb <= '1'; -- State 12: Red at A, Yellow at B

 nextstate <= 0; -- transition back to initial state 

End Case; 

End Process; 

-- process to update current state
Process(clk) 

BEGIN 

if clk'event and clk = '1' then 

state <= nextstate; -- update current state with next state

END if; 

END PROCESS; 

-- assign each appropriate color to lightA based on current state
lightA <= R when Ra= '1' 

Else Y when Ya= '1' 

Else G when Ga= '1'; 


-- assign each appropriate color to lightB based on current state
lightB <= R when Rb= '1' 

Else Y when Yb=  '1' 

Else G when Gb= '1'; 

END traffic_Arch; 

 
