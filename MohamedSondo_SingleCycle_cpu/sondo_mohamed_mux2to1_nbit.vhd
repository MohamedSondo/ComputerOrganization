LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sondo_mohamed_mux2to1_nbit IS
	GENERIC (N : integer := 8);
	PORT (
		a, b : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
		s: IN STD_LOGIC;
		q : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
	);
END sondo_mohamed_mux2to1_nbit;

ARCHITECTURE arch OF sondo_mohamed_mux2to1_nbit IS
	
BEGIN
	PROCESS(s)
	BEGIN
		IF (s = '0') THEN
			q <= a; 
		ELSE 
			q <= b;
		END IF;
	END PROCESS;
	
END arch;
	