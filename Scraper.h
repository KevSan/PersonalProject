
#ifndef BTCBLOCKCHAINSCRAPER_BITCOINSCRAPER_H
#define BTCBLOCKCHAINSCRAPER_BITCOINSCRAPER_H

#include <iostream>
#include <string>
#include <pqxx/pqxx>


class BitcoinScraper {
public:
    BitcoinScraper(std::string postGresAddress);
    void enterInDB(pqxx::work& queryWorker);
    std::string getStdoutFromTerminal(std::string cmd);
    void checkNodeIsRunning();

    bool checkTablesExistInDB(pqxx::work& queryWorker); //Needs to be defined
    void deleteTablesFromDB(pqxx::work& queryWorker);  // Needs to be defined
    void createTablesInDB(pqxx::work& queryWorker); // Needs to be defined

};


#endif //BTCBLOCKCHAINSCRAPER_BITCOINSCRAPER_H
