##//////////////////////////////////////////////////////////////////////////////////
##// Company: Akademia G�rniczo-Hutnicza w Krakowie
##// Engineer: Benedykt Bekasiak
##// Create Date: 15.09.2022 10:18:28
##// Project Name: Ardudido
##// Tool Versions: Vivado 2017.3
##//////////////////////////////////////////////////////////////////////////////////
## �r�d�o constraints do kamery:
## FPGA4student.com: Interfacing Basys 3 FPGA with OV7670 Camera
## Reszta contraints to praca samodzielna

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk100]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk100]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk100]


    ##VGA Connector
    set_property PACKAGE_PIN G19 [get_ports {vga_r[0]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]
    set_property PACKAGE_PIN H19 [get_ports {vga_r[1]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]
    set_property PACKAGE_PIN J19 [get_ports {vga_r[2]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]
    set_property PACKAGE_PIN N19 [get_ports {vga_r[3]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]
    set_property PACKAGE_PIN N18 [get_ports {vga_b[0]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]
    set_property PACKAGE_PIN L18 [get_ports {vga_b[1]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]
    set_property PACKAGE_PIN K18 [get_ports {vga_b[2]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]
    set_property PACKAGE_PIN J18 [get_ports {vga_b[3]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]
    set_property PACKAGE_PIN J17 [get_ports {vga_g[0]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]
    set_property PACKAGE_PIN H17 [get_ports {vga_g[1]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]
    set_property PACKAGE_PIN G17 [get_ports {vga_g[2]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]
    set_property PACKAGE_PIN D17 [get_ports {vga_g[3]}]                
        set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]
    set_property PACKAGE_PIN P19 [get_ports vga_hsync]                        
        set_property IOSTANDARD LVCMOS33 [get_ports vga_hsync]
    set_property PACKAGE_PIN R19 [get_ports vga_vsync]                        
        set_property IOSTANDARD LVCMOS33 [get_ports vga_vsync]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {config_finished}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {config_finished}]
					
##Buttons
 set_property PACKAGE_PIN U18 [get_ports btnc]						
	set_property IOSTANDARD LVCMOS33 [get_ports btnc]
    

#Switches
set_property PACKAGE_PIN V17 [get_ports {sw[0]}]						
        set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {sw[1]}]						
        set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {sw[2]}]						
        set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {sw[3]}]						
        set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
## OV7670 Camera header pins

##Pmod Header JA
#Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {speaker_out} ]					
	set_property IOSTANDARD LVCMOS33 [get_ports {speaker_out} ]
#Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports EchoPin]                    
    set_property IOSTANDARD LVCMOS33 [get_ports EchoPin]
##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports TrigPin]                    
    set_property IOSTANDARD LVCMOS33 [get_ports TrigPin]

##Pmod Header JB
##Sch name = JB1
set_property PACKAGE_PIN A14 [get_ports {ov7670_pwdn}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_pwdn}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports {ov7670_data[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[0]}]
##Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {ov7670_data[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[2]}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports {ov7670_data[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[4]}]
##Sch name = JB7
set_property PACKAGE_PIN A15 [get_ports {ov7670_reset}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_reset}]
##Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports {ov7670_data[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[1]}]
##Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {ov7670_data[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[3]}]
##Sch name = JB10 
set_property PACKAGE_PIN C16 [get_ports {ov7670_data[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[5]}]
  

##Pmod Header JC
##Sch name = JC1
set_property PACKAGE_PIN K17 [get_ports {ov7670_data[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[6]}]
##Sch name = JC2
set_property PACKAGE_PIN M18 [get_ports ov7670_xclk]					
	set_property IOSTANDARD LVCMOS33 [get_ports ov7670_xclk]
##Sch name = JC3
set_property PACKAGE_PIN N17 [get_ports ov7670_href]					
	set_property IOSTANDARD LVCMOS33 [get_ports ov7670_href]
##Sch name = JC4
set_property PACKAGE_PIN P18 [get_ports ov7670_siod]					
	set_property IOSTANDARD LVCMOS33 [get_ports ov7670_siod]
	set_property PULLUP TRUE [get_ports ov7670_siod]
##Sch name = JC7
set_property PACKAGE_PIN L17 [get_ports {ov7670_data[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ov7670_data[7]}]
##Sch name = JC8
set_property PACKAGE_PIN M19 [get_ports ov7670_pclk]					
	set_property IOSTANDARD LVCMOS33 [get_ports ov7670_pclk]
    set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {ov7670_pclk_IBUF}]
##Sch name = JC9
set_property PACKAGE_PIN P17 [get_ports ov7670_vsync]					
	set_property IOSTANDARD LVCMOS33 [get_ports ov7670_vsync]
##Sch name = JC10
set_property PACKAGE_PIN R18 [get_ports ov7670_sioc]					
	set_property IOSTANDARD LVCMOS33 [get_ports ov7670_sioc]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]