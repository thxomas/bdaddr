CC ?= gcc
RM=rm

bdaddr: bdaddr.o oui.o
	$(CC) $(LDFLAGS) -o $@ $^ -lbluetooth

clean:
	$(RM) -f *.o
	$(RM) -f bdaddr
