//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	//{"Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
    {"  ",  "sb-cpu",                                               4,              0},
    {" ",   "free -m | awk 'NR==2{printf \"%.0f%%\", $3*100/$2 }'", 5,              0},
    {" ",   "pacman -Q | wc -l",                                    5,              0}, 
    {"",     "sb-mediaplayer",                                       1,              1},
    {"",     "sb-volume",                                            1,              2},
    /*{"",     "sb-bat",                                               5,              0},*/
    {"",     "date '+%I:%M %a, %d %b '",					         20,   	         0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
