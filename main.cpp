#include <iostream>
#include<fstream>
#include <string>
#include <sstream>
#include <pqxx/pqxx>

#include "Scraper.cpp"

using namespace std;

std::string retrieveLoginInfo();


int main() {

    std:string loginCredentials = retrieveLoginInfo();
    BitcoinScraper test(loginCredentials);

    return 0;
}


std::string retrieveLoginInfo(){

    ifstream keysFile;
    keysFile.open(".keys");

    char output[100];
    std::string loginInfo = "";

    if(keysFile.is_open()){
        while(!keysFile.eof()){
            keysFile >> output;
            loginInfo += output;
            loginInfo += " ";
        }
    }

    return loginInfo;
}

