#include <stdio.h>

int		match(char *s1, char *s2)
{
	if (*s1 == '\0' && *s2 == '\0')
		return (1);
	else if (*s1 == '\0' && *s2 == '*')
		return (match (s1, s2 + 1));
	else if (*s1 == '*' && *s2 == '\0')
		return (match(s1 + 1, s2));
	else if ((*s1 == *s2) && *s2 != '\0' && *s1 != '\0')
		return (match (s1 + 1, s2 + 1));
	else if (*s1 != '\0' && *s2 != '\0' && *s2 == '*')
		return (match(s1 + 1, s2) || match(s1, s2 + 1));
	else
		return (0);
}

int		main(int argc, char **argv)
{	
	if (argc != 3)
	{
		printf("You must enter two arguments.\nBe sure to put them in \" \" marks\n");
		return (0);
	}
	printf("Ex00: => %d\n", match(argv[1], argv[2]));
	return (0);	
}
