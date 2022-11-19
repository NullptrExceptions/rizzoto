//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"",	"sb-volume",		0,	1},
        {"",    "sb-clock",             1,      2}
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " ";
