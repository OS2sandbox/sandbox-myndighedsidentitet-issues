## 👣 Step-by-Step Guide

1. **Obtain a Certificate** : For every IT-system connected to the Faelleskommunale Infrastruktur (FKI) a certificate is needed. To order *do this* (https://mitid-erhverv.dk/support/vejledning/anvendelse/brugeradministrator/certifikater/bestil-et-organisationscertifikat/) or order from NETS

> [!CAUTION]
> (only for older "OCES2" explanation TBD)???

3. **Register as a Provider** : To use Fælleskommunal Adgangstyring(FA) one must first register as a service provider. After registering, you can request acces to use the Faelleskommunale Administrationsmodul (FKAM).
> [!CAUTION]
> (how? mail? self service? guide TBD)

4. **Register and configure IT System** : Now you can use the credentials recieved, to log in to Fælleskommunale Administrationsmodul (FKAM) and configure your IT system in Fælleskomunal Infrastruktur (FKi)

   🔗 Fælleskommunale Administrationsmodul Web access:
   [Test - https://admin-test.serviceplatformen.dk/](https://admin-test.serviceplatformen.dk/)
   [Prod - https://admin.serviceplatformen.dk/](https://admin.serviceplatformen.dk/)

   📖 Read more:

   [docs.kombit.dk - Brugervejledning til Administrationsmodulerne for
   leverandører](https://docs.kombit.dk/id/3921b1af "docs.kombit.dk") (🇩🇰 in Danish)

   ⏯️ Video guide:
   [Vejledning - Tilslut brugervendt system](https://vimeo.com/484429700#t=187s "vimeo.com")  (🇩🇰 in Danish, last updated Friday, November 27, 2020)

5. **Establish Trust and Define SAML Configuration** : Establish trust with your service provider and define the SAML configuration.
> [!CAUTION]
> (howto TBD)

## 💬 FAQ

#### What is Fælleskommunal Adgangsstyring(FKa)?

*FKa is a service delivered as a part of "Fælleskommunal Infrastruktur" (FKi) in Denmark. It’s based on OIOSAML, a specialized configuration of the SAML protocol.*

📖 Read more:

- [Digitaliseringskataloget - Hvad er den fælleskommunale infrastruktur](https://digitaliseringskataloget.dk/om-den-f%C3%A6lleskommunale-infrastruktur "digitaliseringskataloget.dk") (🇩🇰 in Danish)
- [Digitaliseringsstyrelsen - OIOSAML 3](https://digst.dk/it-loesninger/nemlog-in/anvendelse/oiosaml-3/ "digst.dk") (🇩🇰 in Danish)

#### What is Fælleskommunalt Administrationsmodul (FKAM)?

*The FKAM administrative module allows IT providers to register and maintain IT systems with FKi, enter service agreements, maintain job function roles and extract IT system reports*

*📖 Read more:*

- [Digitaliseringskataloget - Fælleskommunalt Administrationsmodul](https://digitaliseringskataloget.dk/l%C3%B8sninger/administrationsmodul "digitaliseringskataloget.dk") (🇩🇰 in Danish)

What is the Context Handler?

*The Context Handler is a proxy-service in front of your Identity Provider (IdP) that improves the efficiency, speed, security and flexibility of login requests to your application.*

📖 Read more:

- [Digitaliseringskataloget - Context Handler](https://digitaliseringskataloget.dk/l%C3%B8sninger/adgangsstyring-brugere#ContextHandler "digitaliseringskataloget.dk") (🇩🇰 in Danish)

#### What are OCES and FOCES certificates?

*"Offentlige certifikater til Elektronisk Service" (OCES) issued by Digitaliseringsstyrelsen - The Danish Agency for Digital Government  are used for service access and data encryption and are registered to your organisation (with organization’s name, registration number, email)
"Funktionscertifikater" or "Systemcertifikater" are OCES certificates with added system-specific metadata and are used for secure system to system communication.*

📖 Read more:

- [MitID Erhverv - Certifikater](https://mitid-erhverv.dk/avanceret/certifikater/ "MitID Erhverv") (🇩🇰 in Danish)
