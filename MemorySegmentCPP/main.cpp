#include <iostream>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>


class Employee {
public:
    void setNumber(int inNumber);
    void setName(char * inName);
    void setPay(long inPay);

    void showData();
    void doTest();

    Employee();
    ~Employee();

//private:
    int number;
    char * name;
    long pay;

    const size_t max_length = 128;
};

Employee::Employee() {
    name = (char *)malloc(sizeof(char) * max_length);
}

Employee::~Employee() {
    free(name);
}

void Employee::setNumber(int inNumber) {
    number = inNumber;
}

void Employee::setName(char *inName) {
    size_t len = strlen(inName);

    if (len > max_length) {
        strcpy(name, "");
        return;
    }

    strcpy(name, inName);
}

void Employee::setPay(long inPay) {
    pay = inPay;
}


void Employee::showData() {
    printf("number: %d\n", number);
    printf("name: %s\n", name);
    printf("pay: %ld\n", pay);
    printf("\n");

}

void Employee::doTest() {
    printf("Test Function.\n");
    return;
}


int main() {


    Employee    ichinose;
    Employee    * momochi_ptr;

    momochi_ptr = new Employee();

    char  ichinose_name[]    = "一之瀬 花名";
    char  momochi_name[]     = "百地 たまて";

    ichinose.setNumber(11111);
    ichinose.setName(ichinose_name);
    ichinose.setPay(12345678);

    momochi_ptr->setNumber(22222);
    momochi_ptr->setName(momochi_name);
    momochi_ptr->setPay(6543210);

    ichinose.showData();
    momochi_ptr->showData();


    printf("intのサイズ: %lu\n", sizeof(int));
    printf("longのサイズ: %lu\n", sizeof(long));
    printf("size_tのサイズ: %lu\n", sizeof(size_t));
    printf("Employeeのサイズ: %lu\n\n", sizeof(Employee));


    printf("ichinoseはアドレス 0x%08x にあります。\n", &ichinose);
    printf("momochi_ptrはアドレス 0x%08x にあります。\n", &momochi_ptr);

    printf("momochi_ptrはアドレス 0x%08x を指しています。 \n\n", momochi_ptr);

    //(void) * showData_ptr = &ichinose.showData();
    //<戻り値の型> (<クラス名>::*<変数名>(<引数リスト>);
    //class CTest { public: void Func(); };
    //void (CTest::*fpFunc)() = CTest::Func;
    //void (Employee::*showData_ptr)(void);
    //
    //showData_ptr = ichinose::showData;

    printf("ichinose.numberはアドレス 0x%08x にあります。 \n", &(ichinose.number));
    printf("ichinose.nameはアドレス 0x%08x にあります。 \n", &(ichinose.name));
    printf("ichinose.payはアドレス 0x%08x にあります。 \n", &(ichinose.pay));
    //printf("ichinose.showDataはアドレス 0x%08x にあります。 \n", &(ichinose.showData));
    //printf("ichinose.doTestはアドレス 0x%08x にあります。 \n", &(ichinose.doTest));

    printf("\n");

    delete momochi_ptr;

    printf("delete momochi_ptrはアドレス 0x%08x にあります。\n", &momochi_ptr);
    printf("delete momochi_ptrはアドレス 0x%08x を指しています。 \n\n", momochi_ptr);

    momochi_ptr = NULL;

    printf("NULL momochi_ptrはアドレス 0x%08x にあります。\n", &momochi_ptr);
    printf("NULL momochi_ptrはアドレス 0x%08x を指しています。 \n\n", momochi_ptr);

    return 0;
}