/*
 * 文件名: component.c
 * 作者: ljk
 * 创建时间: 2023-07-20
 * 文件描述: 开源小组件操作
 */
#include <stdio.h> 
#include <stdlib.h>  
#include <string.h>  
#include "base64.h"



// base64 编码
unsigned char* fun_Base64Encode(const char* input)
{
    size_t len = 0;
    char* output_en = base64_encode(input, strlen(input), &len);
    if(output_en)
    {
        printf("input:%s\n", input);
        printf("base64_en:%s\n", output_en);
        //free(output_en);
    }
    return output_en;
}

// base64 解码
unsigned char* fun_Base64Decode(const char* input)
{
    size_t len = 0;   
    char* output_de = base64_decode(input, strlen(input), &len);
    if(output_de)
    {
        printf("input:%s\n",input);
        printf("base64_de:%s\n",output_de);
        //free(output_de);
    }  
    return output_de;
}



// 测试demo
int main(int argc, char* argv[])
{
    /*base64 test*/
    printf("___[fun_Base64] test___\n");
    unsigned char* input = "ljk,hello!";
    unsigned char* outputEn = NULL, *outputDe = NULL;

    // 编码
    outputEn = fun_Base64Encode(input);
    if(outputEn)
    {   
        // 解码
        outputDe = fun_Base64Decode(outputEn);
        if(outputDe){
            free(outputDe);
        }
        free(outputEn);
    }

    return 0;
}