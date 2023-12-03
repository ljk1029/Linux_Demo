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



// 标题打印
typedef unsigned char* (*CallbackFunction)(const char* in);

unsigned char* test_print(char* title, CallbackFunction callbackFc, const char* input)
{
    unsigned char* ret;
    if(title){
        printf("----------[%s test]----------\n", title);
    }
    if(callbackFc){
        ret = callbackFc(input);
    }
    printf("-----------[test end]-----------\n");

    return ret;
}


// base64 编码
unsigned char* Base64Encode_test(const char* input)
{
    size_t len = 0;
    char* output_en = base64_encode(input, strlen(input), &len);
    if(output_en)
    {
        printf("输入:%s\n", input);
        printf("编码:%s\n", output_en);
        free(output_en);
    }
    return output_en;
}

// base64 解码
unsigned char* Base64Decode_test(const char* input)
{
    size_t len = 0;   
    char* output_de = base64_decode(input, strlen(input), &len);
    if(output_de)
    {
        printf("输入:%s\n",input);
        printf("解码:%s\n",output_de);
        free(output_de);
    }  
    return output_de;
}



// 测试demo
int main(int argc, char* argv[])
{
    /*base64 test*/
    printf("___[fun_Base64] test___\n");
    unsigned char* input  = "ljk,hello!";
    unsigned char* output = "bGprLGhlbGxvIQ==";

    test_print("base64 编码", Base64Encode_test, input);
    test_print("base64 解密", Base64Decode_test, output);

    return 0;
}