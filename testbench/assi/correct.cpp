#include <iostream>
#include <string>

using namespace std;

int main(int argc, char * argv[])
{
    if(argc == 1)
    {
        cout << "Please give me the asm name.\n";
    }
    else
    {
        string name(argv[1]);
        cout << "name: " << name << endl;
        char cmd[1000];
        sprintf(cmd, "java -jar Mars.jar db nc 500 ae2 mc CompactDataAtZero %s.asm", name.c_str());
        cout << cmd << endl;
        system(cmd);
    }
    return 0;
}
