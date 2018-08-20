    }
0136183F  ret  
--- ソース ファイルがありません -------------------------------------------------------------
01361840  int         3  
01361841  int         3  
01361842  int         3  
01361843  int         3  
01361844  int         3  
01361845  int         3  
01361846  int         3  
01361847  int         3  
01361848  int         3  
01361849  int         3  
0136184A  int         3  
0136184B  int         3  
0136184C  int         3  
0136184D  int         3  
0136184E  int         3  
0136184F  int         3  
01361850  int         3  
01361851  int         3  
01361852  int         3  
01361853  int         3  
01361854  int         3  
01361855  int         3  
01361856  int         3  
01361857  int         3  
01361858  int         3  
01361859  int         3  
0136185A  int         3  
0136185B  int         3  
0136185C  int         3  
0136185D  int         3  
0136185E  int         3  
0136185F  int         3  
--- c:\develop\visualstudio_workdpace\memorysegment\memorysegmentapp\memorysegmentapp\memorysegmentapp.cpp 

int main() {
01361860  push        ebp  
01361861  mov         ebp,esp  
01361863  sub         esp,0DCh  
01361869  push        ebx  
0136186A  push        esi  
0136186B  push        edi  
0136186C  lea         edi,[ebp-0DCh]  
01361872  mov         ecx,37h  
01361877  mov         eax,0CCCCCCCCh  
0136187C  rep stos    dword ptr es:[edi]  
0136187E  mov         eax,dword ptr [__security_cookie (0136A00Ch)]  
01361883  xor         eax,ebp  
01361885  mov         dword ptr [ebp-4],eax  
	//メイン関数内で変数宣言
	int         stack_var;      //function()内と同じ名前の変数を定義
	static int  static_initialized_var = 5;
	static int  static_var;
	int         *heap_var_ptr;

	heap_var_ptr = (int *)malloc(sizeof(int) * 5);
01361888  mov         esi,esp  
0136188A  push        14h  
0136188C  call        dword ptr [__imp__malloc (0136B168h)]  
01361892  add         esp,4  
01361895  cmp         esi,esp  
01361897  call        __RTC_CheckEsp (01361127h)  
0136189C  mov         dword ptr [heap_var_ptr],eax  

	printf("intのサイズ: %lu\n", sizeof(int));
0136189F  push        4  
013618A1  push        offset string "int\x82\xcc\x83T\x83C\x83Y: %lu\n" (01367B74h)  
013618A6  call        _printf (01361334h)  
013618AB  add         esp,8  

	printf("global_initialized_varはアドレス 0x%08x にあります。 \n", &global_initiualize_var);
013618AE  push        offset global_initiualize_var (0136A000h)  
013618B3  push        offset string "global_initialized_var\x82\xcd\x83A\x83h\x83\x8c\x83X"... (01367B8Ch)  
013618B8  call        _printf (01361334h)  
013618BD  add         esp,8  
	printf("static_initialized_varはアドレス 0x%08x にあります。 \n\n", &static_initialized_var);
013618C0  push        offset static_initialized_var (0136A004h)  
013618C5  push        offset string "static_initialized_var\x82\xcd\x83A\x83h\x83\x8c\x83X"... (01367BD0h)  
013618CA  call        _printf (01361334h)  
013618CF  add         esp,8  

	printf("static_varはアドレス 0x%08x にあります。 \n", &static_var);
013618D2  push        offset static_var (0136A14Ch)  
013618D7  push        offset string "static_var\x82\xcd\x83A\x83h\x83\x8c\x83X 0x%08x \x82\xc9\x82\xa0"... (01367C14h)  
013618DC  call        _printf (01361334h)  
013618E1  add         esp,8  
	printf("global_varはアドレス 0x%08x にあります。 \n\n", &global_var);
013618E4  push        offset global_var (0136A148h)  
013618E9  push        offset string "global_var\x82\xcd\x83A\x83h\x83\x8c\x83X 0x%08x \x82\xc9\x82\xa0"... (01367C48h)  
013618EE  call        _printf (01361334h)  
013618F3  add         esp,8  

	printf("heap_var_ptrはアドレス 0x%08x にあります。 \n", &heap_var_ptr);
013618F6  lea         eax,[heap_var_ptr]  
013618F9  push        eax  
013618FA  push        offset string "heap_var_ptr\x82\xcd\x83A\x83h\x83\x8c\x83X 0x%08x \x82\xc9"... (01367C7Ch)  
013618FF  call        _printf (01361334h)  
01361904  add         esp,8  
	printf("heap_var_ptrはアドレス 0x%08x を指しています。 \n\n", heap_var_ptr);
01361907  mov         eax,dword ptr [heap_var_ptr]  
0136190A  push        eax  
0136190B  push        offset string "heap_var_ptr\x82\xcd\x83A\x83h\x83\x8c\x83X 0x%08x \x82\xf0"... (01367CB4h)  
01361910  call        _printf (01361334h)  
01361915  add         esp,8  

	printf("stack_varはアドレス 0x%08x にあります。 \n", &stack_var);
01361918  lea         eax,[stack_var]  
0136191B  push        eax  
0136191C  push        offset string "stack_var\x82\xcd\x83A\x83h\x83\x8c\x83X 0x%08x \x82\xc9\x82\xa0\x82"... (01367CF0h)  
01361921  call        _printf (01361334h)  
01361926  add         esp,8  

	function();
01361929  call        function (0136134Dh)  

	free(heap_var_ptr);
0136192E  mov         esi,esp  

	free(heap_var_ptr);
01361930  mov         eax,dword ptr [heap_var_ptr]  
01361933  push        eax  
01361934  call        dword ptr [__imp__free (0136B16Ch)]  
0136193A  add         esp,4  
0136193D  cmp         esi,esp  
0136193F  call        __RTC_CheckEsp (01361127h)  

	printf("free heap_var_ptrはアドレス 0x%08x にあります。 \n", &heap_var_ptr);
01361944  lea         eax,[heap_var_ptr]  
01361947  push        eax  
01361948  push        offset string "free heap_var_ptr\x82\xcd\x83A\x83h\x83\x8c\x83X 0x%0"... (01367D24h)  
0136194D  call        _printf (01361334h)  
01361952  add         esp,8  
	printf("free heap_var_ptrはアドレス 0x%08x を指しています。 \n\n", heap_var_ptr);
01361955  mov         eax,dword ptr [heap_var_ptr]  
01361958  push        eax  
01361959  push        offset string "free heap_var_ptr\x82\xcd\x83A\x83h\x83\x8c\x83X 0x%0"... (01367D60h)  
0136195E  call        _printf (01361334h)  
01361963  add         esp,8  

	heap_var_ptr = NULL;
01361966  mov         dword ptr [heap_var_ptr],0  

	printf("NULL heap_var_ptrはアドレス 0x%08x にあります。 \n", &heap_var_ptr);
0136196D  lea         eax,[heap_var_ptr]  
01361970  push        eax  
01361971  push        offset string "NULL heap_var_ptr\x82\xcd\x83A\x83h\x83\x8c\x83X 0x%0"... (01367DA4h)  
01361976  call        _printf (01361334h)  