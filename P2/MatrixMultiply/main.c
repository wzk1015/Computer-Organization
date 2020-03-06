#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n;
    int i,j,k,l;
    int a[10][10],b[10][10],ans[10][10];

    scanf("%d",&n);
    for (i=0;i<n;i++)
        for (j=0;j<n;j++)
            scanf("%d",&a[i][j]);
    for (i=0;i<n;i++)
        for (j=0;j<n;j++)
            scanf("%d",&b[i][j]);

    for (i=0;i<n;i++)
        for (j=0;j<n;j++)
        {
            ans[i][j] = 0;
            for (k=0;k<n;k++)
                    ans[i][j] += a[i][k]*b[k][j];
        }
    for (i=0;i<n;i++)
    {
        for (j=0;j<n;j++)
            printf("%d ",ans[i][j]);
        printf("\n");
    }

}
