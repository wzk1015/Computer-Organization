#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a[10][10];
    int b[10][10];
    int ans[10][10];
    int m1,n1,m2,n2;
    int i,j,k,l;

    scanf("%d %d %d %d",&m1,&n1,&m2,&n2);
    for (i=0;i<m1;i++)
        for (j=0;j<n1;j++)
            scanf("%d",&a[i][j]);
    for (i=0;i<m2;i++)
        for (j=0;j<n2;j++)
            scanf("%d",&b[i][j]);

    for (i=0;i<m1-m2+1;i++)
        for (j=0;j<n1-n2+1;j++)
        {
            ans[i][j]=0;
            for (k=0;k<m2;k++)
                for (l=0;l<n2;l++)
                {
                    ans[i][j] += a[i+k][j+l]*b[k][l];
                }
        }
    for (i=0;i<m1-m2+1;i++)
    {
        for (j=0;j<n1-n2+1;j++)
            printf("%d ",ans[i][j]);
        printf("\n");
    }
}
