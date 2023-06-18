package com.example.bibliotecaregionecampania.connector;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

public class MyCollectionUser {
    public void createMyCollection(){
        ConnectToDB ctd= new ConnectToDB();
        MongoDatabase database= ctd.getMyDatabase();

        //creare una collezione
        database.createCollection("Admin");
        System.out.println("Collezione creata con successo");
    }

    public MongoCollection<Document> getMyCollection(){
        System.out.println("Sono in getMyCollection()");
        ConnectToDB ctd= new ConnectToDB();
        System.out.println("Sono in getMyCollection()1");
        MongoDatabase database= ctd.getMyDatabase();
        System.out.println("Sono in getMyCollection()2");
        //Selezionere una collezione
        MongoCollection<Document> collection = database.getCollection("Admin");
        System.out.println("Collezione collection selezionata con successo");
        return collection;
    }
}
