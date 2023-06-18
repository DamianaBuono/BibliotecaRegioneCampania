package com.example.bibliotecaregionecampania.connector;

import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;


public class MyCollection {

    public void createMyCollection(){
        ConnectToDB ctd= new ConnectToDB();
        MongoDatabase database= ctd.getMyDatabase();

        //creare una collezione
        database.createCollection("BibliotecaRegioneCampania");
        System.out.println("Collezione creata con successo");
    }

    public  MongoCollection<Document> getMyCollection(){

        ConnectToDB ctd= new ConnectToDB();
        MongoDatabase database= ctd.getMyDatabase();

        //Selezionere una collezione
        MongoCollection<Document> collection = database.getCollection("BibliotecaRegioneCampania");

        System.out.println("Collezione collectionBiblioteca selezionata con successo");
        return collection;
    }


}
