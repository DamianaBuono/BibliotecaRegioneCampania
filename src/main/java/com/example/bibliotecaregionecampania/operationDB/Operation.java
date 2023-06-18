package com.example.bibliotecaregionecampania.operationDB;

import com.example.bibliotecaregionecampania.bean.*;

import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import com.example.bibliotecaregionecampania.connector.MyCollection;
import com.example.bibliotecaregionecampania.connector.MyCollectionUser;

import org.bson.Document;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import org.bson.types.ObjectId;


import java.util.ArrayList;
import java.util.Iterator;

public class Operation {


    // Stampa
    public ArrayList<BibliotecaBean> retrieve(){
        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();

        //ritorna oggetto iterabile
        FindIterable<Document> iterDoc= collection.find();
        int i=1;

        //ritorna iteratore
        Iterator it = iterDoc.iterator();
        System.out.println(iterDoc.into(new ArrayList<>()).size());

        ArrayList<BibliotecaBean>  arrayBiblioteca= new ArrayList<BibliotecaBean>();
        while(it.hasNext()){

            org.bson.Document document= (org.bson.Document) it.next();

            BibliotecaBean bibliotecaBean= new BibliotecaBean(document.getObjectId("_id"),document.getInteger("Cap"), document.getString("Provincia"),document.getString("Telefono"), document.getString("Url"), document.getString("Comune"), document.getString("Denominazione"), document.getString("Email"), document.getInteger("Fid"),document.getString("Indirizzo"));
            System.out.println("Bean: " +bibliotecaBean);
            arrayBiblioteca.add(bibliotecaBean);

            i++;
        }
        return  arrayBiblioteca;
    }


    //Admin
    public boolean isUserDb(String myusername, String password) {
        System.out.println("Sono in isUserDb ");
        MyCollectionUser sc = new MyCollectionUser();
        System.out.println("Sono in isUserDb0 ");
        MongoCollection<Document> collection = sc.getMyCollection();
        System.out.println("Sono in isUserDb1 ");
        //ritorna oggetto iterabile
        FindIterable<Document> iterDoc = collection.find(Filters.eq("Username", myusername));
        System.out.println("Sono in isUserDb2 ");
        int i = 1;

        Iterator it = iterDoc.iterator();
        System.out.println("Sono in isUserDb3 ");
        ArrayList<AdminBean> arrayBib= new ArrayList<AdminBean>();
        while (it.hasNext()) {
            System.out.println("Sono nel while1");
            org.bson.Document document = (org.bson.Document) it.next();
            System.out.println("Sono nel while2");
            AdminBean user = new AdminBean(document.getString("Username"), document.getString("Password"));
            System.out.println("Sono nel while3");
            if (user.getPassword().equals(password)) {
                i++;
                System.out.println("Sono nel while4 e dentro if");
                return true;
            }
        } return false;
    }

    //per modificare FUNZIONA
    public void update(ObjectId id, String indirizzo, String denominazione, String telefono, String email){
        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();

        collection.updateOne(Filters.eq("_id", id), Updates.set("Indirizzo", indirizzo) );
        collection.updateOne(Filters.eq("_id", id), Updates.set("Denominazione", denominazione) );
        collection.updateOne(Filters.eq("_id", id), Updates.set("Telefono", telefono) );
        collection.updateOne(Filters.eq("_id", id), Updates.set("Email", email) );
    }

    //cancellare documento FUNZIONA
    public void remove(ObjectId id){
        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();

        collection.deleteOne(Filters.eq("_id", id));
    }

    //per inserire valori
    public void insert(Integer cap, String provincia, String telefono, String url, String comune, String denominazione, String email,  Integer fid, String indirizzo){

        MyCollection sc = new MyCollection();
        MongoCollection<Document> collection= sc.getMyCollection();
        Document document = new Document("title","MongoDB")
                .append("Cap", cap)
                .append("Provincia", provincia)
                .append("Telefono", telefono)
                .append("Url", url)
                .append("Comune", comune)
                .append("Email", email)
                .append("Fid", fid)
                .append("Denominazione", denominazione)
                .append("Indirizzo", indirizzo);
        collection.insertOne(document);
        System.out.println("Documento inserito con successo");
    }
}
