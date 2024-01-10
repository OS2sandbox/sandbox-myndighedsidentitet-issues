## Step-by-Step Guide

1. **Obtain a Certificate** : For every IT-system connected to the Faelleskommunale Infrastruktur (FKI) a certificate is needed. To order *do this* (https://mitid-erhverv.dk/support/vejledning/anvendelse/brugeradministrator/certifikater/bestil-et-organisationscertifikat/) or order from NETS
> [!CAUTION]
> (only for older "OCES2" explanation TBD)???
3. **Register as a Provider with KOMBIT** : To use Fælleskommunal Adgangstyring(FA) one must first register as a service provider with KOMBIT. After registering, you can request acces to use the Faelleskommunale Administrationsmodul (FKAM).
> >
> [!CAUTION](how? mail? self service? guide TBD)
4. **Configure IT Systems in FKAM** : IT systems can be configured in the Faelleskommunale Administrationsmodul (FKAM) - Here is how
> [!CAUTION]
> (external guide tbd)
5. **Establish Trust and Define SAML Configuration** : Establish trust with your service provider and define the SAML configuration.
> [!CAUTION]
> (howto TBD)

## FAQ

* **What is Fælleskommunal Adgangsstyring(FA)?**
  *FA is a service delivered under the Fælleskommunal Infrastruktur (FKI) in Denmark. It’s based on OIOSAML, a specialized configuration of the SAML protocol.* 📖 Read more: [MitID Erhverv](https://mitid-erhverv.dk/avanceret/certifikater/ "MitID Erhverv")
* **What is the Context Handler?**
  *The Context Handler is a proxy-service in front of your Identity Provider (IdP) that improves the efficiency, speed, security and flexibility of login requests to your application.* 📖 Read more: [digitaliseringskataloget.dk](https://digitaliseringskataloget.dk/l%C3%B8sninger/adgangsstyring-brugere#Ny_Context_Handler "digitaliseringskataloget.dk")
* **What are these OCES and FOCES certificate types all about?**
  *"Offentlige certifikater til Elektronisk Service" (OCES) issued by Digitaliseringsstyrelsen - The Danish Agency for Digital Government  are used for service access and data encryption and are registered to your organisation (with organization’s name, registration number, email)
  "Funktionscertifikater" or "Systemcertifikater" are OCES certificates with added system-specific metadata and are used for secure system to system communication.* 📖 Read more: [MitID Erhverv](https://mitid-erhverv.dk/avanceret/certifikater/ "MitID Erhverv")
