#include <stdio.h>
#include <stdlib.h>

int global_var ;
int global_initiualize_var  = 5;

void function() {
    //関数内で変数宣言
    int stack_var;

    printf("function()内のstack_varはアドレス 0x%08x にあります。\n", &stack_var);

    return;

}

int main() {
    //メイン関数内で変数宣言
    int         stack_var;      //function()内と同じ名前の変数を定義
    static int  static_initialized_var  = 5;
    static int  static_var;
    int         *heap_var_ptr;

    heap_var_ptr = (int *)malloc(sizeof(int));

    printf("intのサイズ: %lu\n", sizeof(int));

    printf("global_initialized_varはアドレス 0x%08x にあります。 \n", &global_initiualize_var);
    printf("static_initialized_varはアドレス 0x%08x にあります。 \n\n", &static_initialized_var);

    printf("static_varはアドレス 0x%08x にあります。 \n", &static_var);
    printf("global_varはアドレス 0x%08x にあります。 \n\n", &global_var);

    printf("heap_var_ptrはアドレス 0x%08x にあります。 \n", &heap_var_ptr);
    printf("heap_var_ptrはアドレス 0x%08x を指しています。 \n\n", heap_var_ptr);

    printf("stack_varはアドレス 0x%08x にあります。 \n", &stack_var);

    function();


    return 0;
}