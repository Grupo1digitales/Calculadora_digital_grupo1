--Grupo 1 digitales
----------------------------------------------------------------------------------------
LIBRARY IEEE; -- IEEE library is included
USE IEEE.STD_LOGIC_1164.ALL; -- the std_logic_1164 package from the IEEE library is used
----------------------------------------------------------------------------------------
ENTITY Four_bit_multiplier_tb IS 
END ENTITY Four_bit_multiplier_tb; 
----------------------------------------------------------------------------------------
ARCHITECTURE testbench_Four_bit_multiplier OF Four_bit_multiplier_tb IS 
    --SIGNALS
    SIGNAL in_a_tb    	        :    STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL in_b_tb              :    STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL product_tb     		  :    STD_LOGIC_VECTOR(7 DOWNTO 0);
	 SIGNAL C_out_tb             :    STD_LOGIC;
BEGIN
    Four_bit_multiplier_testbench_vectors : PROCESS                                               
    -- variable declarations                                     
    BEGIN   
        --test vectors
        in_a_tb    <= "0111";
        in_b_tb    <=  "1001";
        WAIT FOR 200ns;

        in_a_tb    <= "0101";
        in_b_tb    <= "1001";
        WAIT FOR 200ns;

        in_a_tb    <= "1010";
        in_b_tb    <= "0001";
        WAIT FOR 200ns;

        in_a_tb    <= "0101";
        in_b_tb    <=  "1001";
        WAIT FOR 200ns;
		  in_a_tb    <= "0000";
        in_b_tb    <=  "1111";
        WAIT FOR 200ns;

        in_a_tb    <= "0010";
        in_b_tb    <=  "0011";
        WAIT FOR 200ns;

        in_a_tb    <= "1010";
        in_b_tb    <= "0001";
        WAIT FOR 200ns;

        in_a_tb    <= "0110";
        in_b_tb    <= "1110";
        WAIT FOR 200ns;
    WAIT;                                                       
    END PROCESS Four_bit_multiplier_testbench_vectors; -- the process is finished
 
    DUT: ENTITY work.Four_bit_multiplier
    PORT    MAP(    in_a    =>    in_a_tb,
                    in_b    =>    in_b_tb,
                    product =>   product_tb,
						  C_out   =>	 C_out_tb); -- port mapping
 
END ARCHITECTURE testbench_Four_bit_multiplier;