package com.example.bibliotecaregionecampania.bean;
import org.bson.types.ObjectId;

public class BibliotecaBean {
    private ObjectId id;
    private Integer cap, codiceIstatComune,  codiceIstatProvincia,  fid;
    private String provincia, codiceIsil, regione,telefono, url, codiceSbn,fax, comune, denominazione, email, indirizzo, loncitudine, latitudine;


    public BibliotecaBean(ObjectId id, Integer cap, String provincia, String telefono, String url, String comune, String denominazione, String email, Integer fid, String indirizzo) {
        this.id = id;
        this.cap = cap;
        this.fid = fid;
        this.telefono = telefono;
        this.provincia = provincia;
        this.url = url;
        this.comune = comune;
        this.denominazione = denominazione;
        this.email = email;
        this.indirizzo = indirizzo;
    }

    public ObjectId getId() {
        return id;
    }

    public void setId(ObjectId id) {
        this.id = id;
    }

    public Integer getCap() {
        return cap;
    }

    public void setCap(Integer cap) {
        this.cap = cap;
    }

    public Integer getCodiceIstatComune() {
        return codiceIstatComune;
    }

    public void setCodiceIstatComune(Integer codiceIstatComune) {
        this.codiceIstatComune = codiceIstatComune;
    }



    public Integer getCodiceIstatProvincia() {
        return codiceIstatProvincia;
    }

    public void setCodiceIstatProvincia(Integer codiceIstatProvincia) {
        this.codiceIstatProvincia = codiceIstatProvincia;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getCodiceIsil() {
        return codiceIsil;
    }

    public void setCodiceIsil(String codiceIsil) {
        this.codiceIsil = codiceIsil;
    }

    public String getRegione() {
        return regione;
    }

    public void setRegione(String regione) {
        this.regione = regione;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCodiceSbn() {
        return codiceSbn;
    }

    public void setCodiceSbn(String codiceSbn) {
        this.codiceSbn = codiceSbn;
    }

    public String getComune() {
        return comune;
    }

    public void setComune(String comune) {
        this.comune = comune;
    }

    public String getDenominazione() {
        return denominazione;
    }

    public void setDenominazione(String denominazione) {
        this.denominazione = denominazione;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIndirizzo() {
        return indirizzo;
    }

    public void setIndirizzo(String indirizzo) {
        this.indirizzo = indirizzo;
    }

    public String getLoncitudine() {
        return loncitudine;
    }

    public void setLoncitudine(String loncitudine) {
        this.loncitudine = loncitudine;
    }

    public String getLatitudine() {
        return latitudine;
    }

    public void setLatitudine(String latitudine) {
        this.latitudine = latitudine;
    }

    @Override
    public String toString() {
        return "BibliotecaBean{" +
                "id=" + id +
                ", cap=" + cap +
                ", telefono=" + telefono +
                ", fax=" + fax +
                ", fid=" + fid +
                ", provincia='" + provincia + '\'' +
                ", regione='" + regione + '\'' +
                ", url='" + url + '\'' +
                ", comune='" + comune + '\'' +
                ", denominazione='" + denominazione + '\'' +
                ", email='" + email + '\'' +
                ", indirizzo='" + indirizzo + '\'';
    }


}
