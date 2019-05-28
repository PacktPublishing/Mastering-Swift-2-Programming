//
//  Math.c
//  UsingCinSwift
//
//  Created by Dan Beaulieu on 12/12/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

#include "Math.h"


int cmultiply(int x, int y)
{
    return (int) x * y;
}

int csquare(int x)
{
    return (int) pow(x, 2);
}


// Sean Murphy 2013 IOCCC contest
void gameOfLife(){
    int _[2048],O=(int)&O,__=~__+__;
    while((__=-~__)^2048)__[_]=(O=(O*0x41C64E6D+12345)&0x7fffffff)&1024?1<<5:0;
    while(usleep('d'<<'\n'),__+=~__){
        while((__=-~__)^8192){
            if(_[((__>>2)+2048+"\x01?@A"[__%4])%04000]&1<<5)*(_+(__>>2))=-~_[__>>2];
            if(_[((__>>2)+04000-"\x01?@A"[__%4])%2048]&1<<5)*(_+(__>>2))=-~_[__>>2];
            if(__%4==3)_[__>>2]|=_[__>>2]^'\"'&&_[__>>2]^'#'?((_[__>>2]^3)?0:1<<4):1<<4;};
        while((__=-~__)^10240)if(putchar((_[__%2048]=_[__%2048]<<1&1<<5)?'X':' '),!(63^__%0100))putchar(10);}};