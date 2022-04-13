VERILOG = iverilog
TARGET = voter_if.vcd
TEMP = temp.vvp

$(TARGET) : temp.vvp
	vvp temp.vvp
temp.vvp: voter_if_tb.v voter_if.v
	$(VERILOG) -o temp.vvp voter_if_tb.v voter_if.v
clean:
	-del $(TARGET)
	-del $(TEMP)