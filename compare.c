/**
 * find fastest algorithm to check if either of 3 bool values
 * are true or not.
 */

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

#define TRY_MAX		10000000
#define NUM_ENTRY	3

typedef bool (*FUNC)(int a[]);

bool compare_01(int a[])
{
	return (a[0] | a[1] | a[2]) > 0;
}

bool compare_02(int a[])
{
	return a[0] > 0 || a[1] > 0 || a[2] > 0;
}

bool compare_03(int a[])
{
	int i;
	for (i = 0; i < NUM_ENTRY; i++) {
		if (a[i] > 0) {
			return true;
		}
	}
}

bool compare_04(int a[])
{
	return a[0] | a[1] | a[2];
}

bool compare_05(int a[])
{
	return a[0] || a[1] || a[2];
}

int main(void)
{
	struct {
		FUNC func;
		char *msg;
	} funcs[] = {
		{ compare_01, "|> " },
		{ compare_02, "||>" },
		{ compare_03, "for" },
		{ compare_04, "|  " },
		{ compare_05, "|| " },
	};

	int nfunc = sizeof(funcs) / sizeof(funcs[0]);
	int i, j, k;
	bool ret;
	int a[NUM_ENTRY];
	long int t;

	srand((unsigned)time(NULL));

	for (i = 0; i < nfunc; i++)
	{
		t = clock();
		for (j = 0; j < TRY_MAX; j++)
		{
			for (k = 0; k < NUM_ENTRY; k++)
			{
				a[k] = rand() % 2;
			}
			ret = funcs[i].func(a);
		}
		t = clock() - t;
		printf("%s: %ld\n", funcs[i].msg, t);
	}
}
