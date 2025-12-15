#include<iostream>
#include<cmath>

using namespace std;

int main()
{
    bool flag = true;
    int i=1;
    __int128_t p,q;
    while(flag)
    {
        p=pow(2,i);
        q=pow(32,i);
        if((p-q)==0)
        {
            flag=false;
        }
        i++;
    }

    cout<<"Result is: "<<i<<endl;
}