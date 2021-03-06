EXEC   = bisection                       #name of executable

OPTIMIZE =  -O2			         #compilation optimization

OBJS   = main.o bisection_root_finding.o #object files to create

CC     = gcc                             #CC is the environment variable for the C compiler

INCL   = bisection_root_finding.h        #local header files to include

LIBS   = -lm                              #libraries to add


#the following lines build an executable from the object files
$(EXEC): $(OBJS) 
	 $(CC) $(OBJS) $(LIBS) -o $(EXEC)   

$(OBJS): $(INCL) 

#the following lines enable us to easily remove object files
.PHONY : clean

clean:
	 rm -f $(OBJS) $(EXEC)
