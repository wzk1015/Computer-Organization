#include <stdio.h>
#include <stdlib.h>

int startx,starty,endx,endy;
int n,m;
int a[8][8];
int ans=0;

void solver(posx,posy)
{
    int nextx,nexty;
    a[posx][posy]=2;
    if (posx==endx && posy==endy)
    {
        ans++;
        return;
    }
    nextx=posx;
    nexty=posy+1;
    if (nexty<n && a[nextx][nexty]==0)
        solver(nextx,nexty);

    nextx=posx;
    nexty=posy-1;
    if (nexty>=0 && a[nextx][nexty]==0)
        solver(nextx,nexty);

    nextx=posx+1;
    nexty=posy;
    if (nextx<m && a[nextx][nexty]==0)
        solver(nextx,nexty);

    nextx=posx-1;
    nexty=posy;
    if (nextx>=0 && a[nextx][nexty]==0)
        solver(nextx,nexty);

}






int main()
{
    int i,j;
    scanf("%d %d",&n,&m);
    for (i=0;i<n;i++)
        for (j=0;j<m;j++)
            scanf("%d",&a[n][m]);
    scanf("%d %d %d %d",&startx,&starty,&endx,&endy);
    startx-=1;
    starty-=1;
    endx-=1;
    endy-=1;
    solver(startx,starty);
    printf("%d",ans);
    return 0;
}
