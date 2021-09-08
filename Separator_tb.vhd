--Grupo 1 digitales
----------------------------------------------------------------------------------------
LIBRARY IEEE; -- IEEE library is included
USE IEEE.STD_LOGIC_1164.ALL; -- the std_logic_1164 package from the IEEE library is used
----------------------------------------------------------------------------------------
ENTITY Separator_tb IS 
END ENTITY Separator_tb; 
----------------------------------------------------------------------------------------
ARCHITECTURE testbench_Separator OF Separator_tb IS 
    --SIGNALS
    SIGNAL result_tb    	:    STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL tenths_tb    	:    STD_LOGIC_VECTOR(3 DOWNTO 0);
	 SIGNAL magnitude_tb    :    STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL unidades_tb		:	  STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    Separator_testbench_vectors : PROCESS                                               
    -- variable declarations                                     
    BEGIN   
        --test vectors
        result_tb   <= "00101101";
        WAIT FOR 200ns;
		  result_tb   <= "00111111";
        WAIT FOR 200ns;
		  result_tb   <= "10101010";
        WAIT FOR 200ns;
		  result_tb   <= "00001111";
        WAIT FOR 200ns;
		  result_tb   <= "00000010";
        WAIT FOR 200ns;
		  result_tb   <= "01000110";
        WAIT FOR 200ns;
		  result_tb   <= "01111111";
        WAIT FOR 200ns;
		  result_tb   <= "00000001";
        WAIT FOR 200ns;
		  result_tb   <= "01010000";
        WAIT FOR 200ns;
		  result_tb   <= "10110000";
        WAIT FOR 200ns;

    WAIT;                                                       
    END PROCESS Separator_testbench_vectors; -- the process is finished
 
    DUT: ENTITY work.Separator
    PORT    MAP(    result    =>    result_tb ,
                    tenths    =>    tenths_tb,
						  unidades  =>		unidades_tb,
                    magnitude =>    magnitude_tb); -- port mapping
 
END ARCHITECTURE testbench_Separator;