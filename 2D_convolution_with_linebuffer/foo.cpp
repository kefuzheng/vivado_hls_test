
//add test message

void foo(int* a, int* b)
{
#pragma HLS inline=off
    *b = (*a) * (*a);
}
