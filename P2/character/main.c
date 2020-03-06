#include <stdio.h>
#include <stdlib.h>

int num[26];
char order[26];

int main()
{
    int n;
    int i;
    char c;
    int order_j=0;

    scanf("%d ",&n);
    for (i=0;i<26;i++)
        num[26]=0;

    for (i=0;i<n;i++)
    {
        scanf("%c",&c);
        if (num[c-'a']==0)
            order[order_j++]=c;
        num[c-'a']++;
    }
    for (i=0;i<order_j;i++)
        printf("%c %d\n",order[i],num[order[i]-'a']);

}
