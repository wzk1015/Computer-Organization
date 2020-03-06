#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n;
    int i;
    int j;
    char c[25];
    int mark=1;

    scanf("%d",&n);
    for (i=0;i<n;i++)
        scanf(" %c",&c[i]);

    for (i=0;i<n;i++)
    {
        j=n-1-i;
        if (c[j]!=c[i])
        {
            mark=0;
            break;
        }
    }
    printf("%d",mark);

    return 0;
}
