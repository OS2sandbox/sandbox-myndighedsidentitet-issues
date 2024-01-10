## Step-by-Step Guide

1. **Obtain a Certificate** : For every IT-system connected to the Faelleskommunale Infrastruktur (FKIS) a certificate is needed. To order *do this* (https://mitid-erhverv.dk/support/vejledning/anvendelse/brugeradministrator/certifikater/bestil-et-organisationscertifikat/) or order from NETS???
2. **Register as a Provider with KOMBIT** : To use Fælleskommunal Adgangstyring(FA)one must first register as a service provider with KOMBIT. After registering, you can request acces to use the Faelleskommunale Administrationsmodul (FKAM).
3. **Configure IT Systems in FKAM** : IT systems can be configured in the Faelleskommunale Administrationsmodul (FKAM) - Here is how (external guide)
4. **Establish Trust and Define SAML Configuration** : Establish trust with your service provider and define the SAML configuration. (howto)

## FAQ

* **What is Fælleskommunal Adgangsstyring(FA)?**
  FA is a service delivered under the Fælleskommunal Infrastruktur (FKI) in Denmark. It’s based on OIOSAML, a specialized configuration of the SAML protocol.
* **How is Authentication and Authorization defined in FA?**
  Authentication defines the user’s identity and association with the organization. Authorization defines the rights of the user – what they are allowed to do and access. This is controlled by jobfunktionsroller and dataafgrænsinger in FA.
* **What is the Chain of Trust?**
  In general, there is a “chain of trust” in the FKI. For each municipality, the Context Handler has a trust to the local IdP. This allows the Local IdP to generate an Assertion (essentially a user authorization) which is then delivered to the Context Handler.
* **What is the Context Handler?**
  The Context Handler is a proxy-service in front of your Identity Provider (IdP) that improves the efficiency, speed, security and flexibility of login requests to your application. Read more:
* **What are alle these certificate types**
  "Offentlige certifikater til Elektronisk Service" (OCES) issued by Digitaliseringsstyrelsen - The Danish Agency for Digital Government  are used for service access and data encryption and are registered to your organisation (with organization’s name, registration number, email)
  "Funktionscertifikater" or "Systemcertifikater" are OCES certificates with added system-specific metadata and are used for secure system to system communication.

### Bestilling af Organisations certifikat: ???

Organisationscertifikater bruges til at identificere organisationen, når den skal have adgang til web- og andre tjenester hos tjenesteudbydere.

De kan også bruges til at kryptere den data, der går til og fra tjenesterne.

Du skal tilknytte en kontaktperson, der bliver informeret, hvis certifikatet skal opdateres, bliver spærret eller lignende.

I kan have mere end ét organisationscertifikat. Derfor skal du altid navngive nye certifikater, så I kan skelne mellem dem.

Der er to typer certifikater, du kan bruge i din organisation:

- Et organisationscertifikat repræsenter din organisation. Der er ingen personnavne i certifikatet, der typisk kun indeholder organisationens navn, CVR-nummer og en e-mailadresse.
- Et systemcertifikat er en specialisering af organisationscertifikatet, der repræsenterer et specifikt system i din organisation. Certifikatet udstedes til og bruges af systemet til at vise, hvad det er, når der er kontakt til andre interne eller eksterne systemer.

## 🕳️🐇 Rabbit hole:

https://certifikat.gov.dk/

https://mitid-erhverv.dk/avanceret/certifikater/
