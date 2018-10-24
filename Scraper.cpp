#include "Scraper.h"

#include <iostream>
#include <pqxx/pqxx>
#include <string>
#include <sstream>
#include <stdlib.h> //used for exit() and EXIT_FAILURE


BitcoinScraper::BitcoinScraper(std::string postGresLoginInfo){

    std::cout<< postGresLoginInfo<< std::endl; //this is a test: needs to get deleted soon

    //checkNodeIsRunning();  //this needs to be part of the process, remove comment


    pqxx::connection connToDB(postGresLoginInfo);
    pqxx::work queryWorker(connToDB);

    //enterInDB(queryWorker);
    //checkTablesExistInDB(queryWorker);
    createTablesInDB(queryWorker);
    connToDB.disconnect();
}


void BitcoinScraper::enterInDB(pqxx::work& queryWorker) {

    std::cout<< "test"<< std::endl;  // test

    int val1 = 100;
    std::ostringstream streamVal1;
    streamVal1 << val1;
    std::string val2 = "\'5/30 9:42\'";
    std::string query;
    query = "INSERT INTO test_table(num, str) VALUES (" + streamVal1.str() + ", " + val2 + ")";

    std::cout<< query<< std::endl;  // test

    queryWorker.exec(query);
    queryWorker.commit();
}


//function that returns terminal output for a given terminal command
std::string BitcoinScraper::getStdoutFromTerminal(std::string cmd){

    std::string data;
    FILE * stream;
    const int max_buffer = 256;
    char buffer[max_buffer];
    cmd.append(" 2>%1");

    stream = popen(cmd.c_str(), "r");
    if(stream){
        while(!feof(stream)){
            if(fgets(buffer, max_buffer, stream) != NULL){
                data.append(buffer);
            }
        }
        pclose(stream);
    }
    return data;
}


void BitcoinScraper::checkNodeIsRunning(){

    std::string helpOutput = getStdoutFromTerminal("bitcoin-cli help");
    if(helpOutput == ""){
        std::cout<< "Error: There isn't a bitcoin node running on this machine. Please verify that one has been"<< std::endl;
        std::cout<< "downloaded, then make sure to run the node before calling the BitcoinScraper again."<< std::endl;
        exit(EXIT_FAILURE);
    }else{
        std::cout<< "success"<< std::endl;
    }
}


bool BitcoinScraper::checkTablesExistInDB(pqxx::work& queryWorker){ //need to test if this returns true for empty tables

    pqxx::result blockInfoTableExists = queryWorker.exec("select exists(select 1 from btc_block_info)");
    pqxx::result txTableExists = queryWorker.exec("select exists(select 1 from btc_transactions)");
    pqxx::result txInputsTableExists = queryWorker.exec("select exists(select 1 from btc_tx_inputs)");
    pqxx::result txOutputsTableExists = queryWorker.exec("select exists(select 1 from btc_tx_outputs)");

    //The above variables return the results of the query in a results object which is an array of tuples.
    //The below return statement checks the first index in the first tuple of each result object. The function returns
    //true if all tables exist, else false if even one table is missing.
    //return blockInfoTableExists[0][0] && txTableExists[0][0] && txInputsTableExists[0][0] && txOutputsTableExists[0][0];
    std::cout<< blockInfoTableExists[0][0]<< std::endl;
    std::cout<< txTableExists[0][0]<< std::endl;
    std::cout<< txInputsTableExists[0][0]<< std::endl;
    std::cout<< txOutputsTableExists[0][0]<< std::endl;

}


//Double check column types are correct, especially the bigint columns
//Double check if outputs only has 6 columns and not 7
void BitcoinScraper::createTablesInDB(pqxx::work& queryWorker){

    std::string createSchemaQuery = "CREATE SCHEMA blockchain";

    std::string createBtcBlockInfoQuery = "CREATE TABLE blockchain.btc_block_info("
                                                "hash text,"
                                                "confirmations bigint,"
                                                "stripped_size bigint,"
                                                "size double precision,"
                                                "weight double precision,"
                                                "height bigint,"
                                                "version bigint,"
                                                "version_hex text,"
                                                "merkle_root text,"
                                                "time bigint,"
                                                "median_time bigint,"
                                                "nonce bigint,"
                                                "bits text,"
                                                "difficulty double precision,"
                                                "chainwork text);";

    std::string createBtcTxQuery = "CREATE TABLE blockchain.btc_transactions("
                                            "txid text,"
                                            "hash text,"
                                            "version bigint,"
                                            "size bigint,"
                                            "vsize bigint,"
                                            "locktime bigint,"
                                            "hex text,"
                                            "confirmations bigint,"
                                            "time bigint,"
                                            "blocktime bigint,"
                                            "height bigint);";

    std::string createBtcInputsQuery = "CREATE TABLE blockchain.btc_tx_inputs("
                                            "txid text,"
                                            "height bigint,"
                                            "input_txid text,"
                                            "vin_address text,"
                                            "vin_amount double precision,"
                                            "vin_index bigint,"
                                            "vin_hex text);";

    std::string createBtcOutputsQuery = "CREATE TABLE blockchain.btc_tx_outputs("
                                        "txid text,"
                                        "height bigint,"
                                        "vout_address text,"
                                        "vout_amount double precision,"
                                        "vout_index bigint,"
                                        "vout_hex text);";

    queryWorker.exec(createSchemaQuery);

    queryWorker.exec(createBtcBlockInfoQuery);
    queryWorker.exec(createBtcTxQuery);
    queryWorker.exec(createBtcInputsQuery);
    queryWorker.exec(createBtcOutputsQuery);

    queryWorker.commit();


}


void BitcoinScraper::deleteTablesFromDB(pqxx::work& queryWorker){


}