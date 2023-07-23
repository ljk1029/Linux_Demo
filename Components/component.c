/*
 * 文件名: component.c
 * 作者: ljk
 * 创建时间: 2023-07-20
 * 文件描述: 开源小组件操作
 */
#include "common.h"
#include "component.h"
#include "./base64/base64.h"
#include "./cjson/cJSON.h"



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

// 解析cjson数据
int fun_GetcJSON(const char *data)
{
    const char *json_data = data;

    printf("input:%s\n", json_data);
    cJSON* root = cJSON_Parse(json_data);
    if (root == NULL) {
        printf("Error while parsing JSON data.\n");
        return 1;
    }

    cJSON* name = cJSON_GetObjectItem(root, "name");
    cJSON* age = cJSON_GetObjectItem(root, "age");
    cJSON* is_student = cJSON_GetObjectItem(root, "is_student");
    cJSON* address = cJSON_GetObjectItem(root, "address");
    cJSON* hobbies = cJSON_GetObjectItem(root, "hobbies");

    printf("Name: %s\n", name->valuestring);
    printf("Age: %d\n", age->valueint);
    printf("Is Student: %s\n", is_student->type == cJSON_True ? "true" : "false");
    printf("City: %s\n", cJSON_GetObjectItem(address, "city")->valuestring);
    printf("Zip Code: %s\n", cJSON_GetObjectItem(address, "zip_code")->valuestring);

    printf("Hobbies:\n");
    for (int i = 0; i < cJSON_GetArraySize(hobbies); i++) {
        cJSON* hobby = cJSON_GetArrayItem(hobbies, i);
        printf("- %s\n", hobby->valuestring);
    }

    char* json_data_p = cJSON_Print(root);
    if(json_data_p){
        printf("%s\n", json_data_p);
        free(json_data_p);
    }

    cJSON_Delete(root);
    return 0;
}

// 组建cjson数据
int fun_AddcJSON()
{
    cJSON* root = cJSON_CreateObject();
    cJSON_AddStringToObject(root, "name", "John Doe");
    cJSON_AddNumberToObject(root, "age", 30);
    cJSON_AddBoolToObject(root, "is_student", 1);

    cJSON* address = cJSON_CreateObject();
    cJSON_AddStringToObject(address, "city", "New York");
    cJSON_AddStringToObject(address, "zip_code", "10001");
    cJSON_AddItemToObject(root, "address", address);

    cJSON* hobbies = cJSON_CreateArray();
    cJSON_AddItemToArray(hobbies, cJSON_CreateString("reading"));
    cJSON_AddItemToArray(hobbies, cJSON_CreateString("gaming"));
    cJSON_AddItemToArray(hobbies, cJSON_CreateString("cooking"));
    cJSON_AddItemToObject(root, "hobbies", hobbies);

    char* json_data = cJSON_Print(root);
    if(json_data){
        printf("%s\n", json_data);
        free(json_data);
    }
    
    char *json_data_s = cJSON_PrintUnformatted(root);
    if(json_data_s){
        printf("%s\n", json_data_s);
        free(json_data_s);
    }
    
    cJSON_Delete(root);
}

#define  CJSON_STR  "{\"name\":\"John Doe\",\"age\":30,\"is_student\":true,\"address\":{\"city\":\"New York\",\"zip_code\":\"10001\"},\"hobbies\":[\"reading\",\"gaming\",\"cooking\"]}"



int main()
{
    /*base64 test*/
    printf("___[fun_Base64] test___\n");
    unsigned char* input = "ljk,hello!";
    unsigned char* outputEn = NULL, *outputDe = NULL;
    outputEn = fun_Base64Encode(input);
    if(outputEn)
        outputDe = fun_Base64Decode(outputEn);
    if(outputEn)
        free(outputEn);
    if(outputDe)
        free(outputDe);

    /*cjson test*/
    printf("___[fun_GetcJSON] test___\n");
    fun_GetcJSON(CJSON_STR);
    printf("___[fun_AddcJSON] test___\n");
    fun_AddcJSON();
}