# Lab 2: JAKUB_DURAC

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![image](https://user-images.githubusercontent.com/99799946/155304399-9a4683a0-bb5e-4d74-af81-f4a5c79964fb.png)

   Less than:

   ![image](https://user-images.githubusercontent.com/99799946/155304448-6f01ab17-97a0-4840-8ed4-9306d7b5b897.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   
![CodeCogsEqn (1)](https://user-images.githubusercontent.com/99799946/156242143-976eba75-6c62-4694-b31d-b201e8a31274.png)


### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx46**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0100"; 		-- Such as "0100" if ID = xxxx46
        s_a <= "0110";      -- Such as "0110" if ID = xxxx46
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination 0100, 0110 FAILED" severity error;

 		-- Second test case
        s_b <= "0110"; 		
        s_a <= "0110";      
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination 0110, 0110 FAILED" severity error;
        
         -- Third test case
        s_b <= "0101"; 		
        s_a <= "0111";      
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination 0101, 0111 FAILED" severity error;
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end architecture testbench;


```

2. Text console screenshot during your simulation, including reports.

   ![image](https://user-images.githubusercontent.com/99799946/156242586-dd132434-b053-4145-8b03-54aff7d259ea.png)

3. Link to your public EDA Playground example:

   https://www.edaplayground.com/x/KFUQ
