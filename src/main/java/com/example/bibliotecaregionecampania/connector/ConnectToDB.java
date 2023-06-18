package com.example.bibliotecaregionecampania.connector;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

public class ConnectToDB {
    public static synchronized MongoDatabase getMyDatabase(){
        //Creazione Mongo client
        MongoClient mongo = null;
        try {
            System.out.println("Sono in getMyDatabase()0");
            mongo = new MongoClient("localhost", 27017);
            System.out.println("Sono in getMyDatabase()");
        } catch (Exception e) {

        }
        //Accesso al databaseBibliotecaRegioneCampagna
        MongoDatabase database= mongo.getDatabase("BibliotecaRegioneCampania");
        System.out.println("Sono in getMyDatabase()1");
        System.out.println("la connessione con il database ha avuto successo");

        //System.out.println("Credenziali :"+credential);

        return database;
    }
}
