/**
 * find fastest algorithm to check if either of 3 bool values
 * are true or not.
 */

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <time.h>

#define TRY_MAX		10000000
#define NUM_ENTRY	20

typedef bool (*FUNC)(int a[], int n);

bool compare_01(int a[], int n)
{
	return (a[0] | a[1] | a[2]) > 0;
}

bool compare_02(int a[], int n)
{
	return a[0] > 0 || a[1] > 0 || a[2] > 0;
}

bool compare_03(int a[], int n)
{
	int i;
	for (i = 0; i < n; i++) {
		if (a[i] > 0) {
			return true;
		}
	}
}

bool compare_04(int a[], int n)
{
	return a[0] | a[1] | a[2];
}

bool compare_05(int a[], int n)
{
	return a[0] || a[1] || a[2];
}

bool compare_06(int a[], int n)
{
	return (a[0] | a[1] | a[2] | a[3]) > 0;
}


bool compare_07(int a[], int n)
{
	return a[0] || a[1] || a[2] || a[3];
}

bool compare_08(int a[], int n)
{
	return (a[0] |
			a[1] |
			a[2] |
			a[3] |
			a[4] |
			a[5] |
			a[6] |
			a[7] |
			a[8] |
			a[9] |
			a[10] |
			a[11] |
			a[12] |
			a[13] |
			a[14] |
			a[15] |
			a[16] |
			a[17] |
			a[18] |
			a[19]) > 0;
}

bool compare_09(int a[], int n)
{
	return a[0] ||
		a[1] ||
		a[2] ||
		a[3] ||
		a[4] ||
		a[5] ||
		a[6] ||
		a[7] ||
		a[8] ||
		a[9] ||
		a[10] ||
		a[11] ||
		a[12] ||
		a[13] ||
		a[14] ||
		a[15] ||
		a[16] ||
		a[17] ||
		a[18] ||
		a[19];
}

int main(void)
{
	const struct {
		FUNC func;
		char *msg;
		int max;
	} tests[] = {
		{ compare_01, "(|)>0 ", 3 },
		{ compare_02, "(>0)||", 3 },
		{ compare_03, "for   ", 3 },
		{ compare_04, "|     ", 3 },
		{ compare_05, "||    ", 3 },
		{ compare_06, "(|)>0 ", 4 },
		{ compare_07, "||    ", 4 },
		{ compare_08, "(|)>0 ", 20 },
		{ compare_09, "||    ", 20 },
		{ compare_03, "for   ", 20 },
	};

	const int nfunc = sizeof(tests) / sizeof(tests[0]);
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
			for (k = 0; k < tests[i].max; k++)
			{
				a[k] = rand() % 2;
			}
			ret = tests[i].func(a, tests[i].max);
		}
		t = clock() - t;
		printf("[%2d] %s: %ld\n", tests[i].max, tests[i].msg, t);
	}
}
