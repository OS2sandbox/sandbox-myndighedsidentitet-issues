# 👣 Step-by-Step Guide

## 1. Obtain a Certificate


> [!IMPORTANT]  
> Section not done - Is NETS method only for older "OCES2" - is the midtid erhverv valid for OCES3 and Contexthandler2?

To verify ownership of your IT-system and secure communications between it and Fælleskommunal Infrastruktur (FKI) a certificate is needed.

To order a certificate for your system, [log in to MitID Erhverv](https://mitid-erhverv.dk) and follow the guide linked below.

### 🔗 Links
> [MitID Erhverv - Login](https://mitid-erhverv.dk)
>
> [MitID Erhverv support - Guide for ordering a certificate ](https://mitid-erhverv.dk/support/vejledning/anvendelse/brugeradministrator/certifikater/bestil-et-organisationscertifikat/)

 (or order from NETS??)

## 2. Sign up as a service provider

> [!IMPORTANT]  
> Section not done - Need more info on employee access rights management in MitID erhverv.

Before you can use Fælleskommunal Adgangstyring (FA), your Company / Municipality needs to sign up. This can be done at Digitaliserings Kataloget's site [Oprette organisation i det Fælleskommunale Administrationsmodul](https://digitaliseringskataloget.dk/oprette-organisation-i-det-faelleskommunale-administrationsmodul). Do pay in mind, that signing up to use FA entails an __administration fee__. Information regarding price, and more, can be found on the sign-up page. After registration and subsequent approval from KOMBIT, sign-in to the Administration module will happend throught MitID. Any employee that needs to access the administration module, will need to be granted the right access level by an administrator of the company, which is managed through MitID erhverv


## 3. Register and configure IT System

Log in to the administration webportal Fælleskommunalt Administrationsmodul(FKAM), using MitID, and configure your IT system in Fælleskomunal Infrastruktur(FKi)

### 🔗 FKAM Web Portal acess

> [Test - https://admin-test.serviceplatformen.dk/](https://admin-test.serviceplatformen.dk/)
>
> [Prod - https://admin.serviceplatformen.dk/](https://admin.serviceplatformen.dk/)

### 📖 User guides

> [Brugervejledning for
> leverandører - docs.kombit.dk](https://docs.kombit.dk/id/3921b1af "docs.kombit.dk") (🇩🇰 in Danish)
>
> [Video guide - Tilslut brugervendt system](https://vimeo.com/484429700#t=187s "vimeo.com") (🇩🇰 in Danish, old video guide from 2020)

### 4. Establish Trust and Define SAML Configuration

> [!IMPORTANT]  
> Section not done - how to establish the trust - screenshots?

Establish trust with your service provider and define the SAML configuration.

## 💬 FAQ

### What is Fælleskommunal Adgangsstyring(FKa)?

*The purpose of FKa is to handle authentication and authorization within "Fælleskommunal Infrastruktur" (FKi) in Denmark.
FKa is based on OIOSAML, a specialized configuration of the SAML protocol.*

📖 Read more:

> [Digitaliseringskataloget - Hvad er den fælleskommunale infrastruktur](https://digitaliseringskataloget.dk/om-den-f%C3%A6lleskommunale-infrastruktur "digitaliseringskataloget.dk") (🇩🇰 in Danish)
>
> [Digitaliseringskataloget - Adgangsstyring for brugere](https://digitaliseringskataloget.dk/l%C3%B8sninger/adgangsstyring-brugere "digitaliseringskataloget.dk") (🇩🇰 in Danish)
>
> [Digitaliseringsstyrelsen - OIOSAML 3](https://digst.dk/it-loesninger/nemlog-in/anvendelse/oiosaml-3/ "digst.dk") (🇩🇰 in Danish)

### What is Fælleskommunalt Administrationsmodul (FKAM)?

The FKAM administrative module is a webportal that allows service providers to register and maintain applications with FKi, enter service agreements, maintain job function roles and extract IT system reports

📖 Read more:

> [Digitaliseringskataloget - Fælleskommunalt Administrationsmodul](https://digitaliseringskataloget.dk/l%C3%B8sninger/administrationsmodul "digitaliseringskataloget.dk") (🇩🇰 in Danish)

### What is the Context Handler?

The Context Handler is a proxy-service in front of your Identity Provider (IdP) that secures login requests from the user organization to the application or "IT system" re

📖 Read more:

> [Digitaliseringskataloget - Context Handler](https://digitaliseringskataloget.dk/l%C3%B8sninger/adgangsstyring-brugere#ContextHandler "digitaliseringskataloget.dk") (🇩🇰 in Danish)

### What are OCES and FOCES certificates?

*"Offentlige certifikater til Elektronisk Service" (OCES) issued by Digitaliseringsstyrelsen - The Danish Agency for Digital Government  are used for service access and data encryption and are registered to your organisation (with organization’s name, registration number, email)
"Funktionscertifikater" or "Systemcertifikater" are OCES certificates with added system-specific metadata and are used for secure system to system communication.*

📖 Read more:

> [MitID Erhverv - Certifikater](https://mitid-erhverv.dk/avanceret/certifikater/ "MitID Erhverv") (🇩🇰 in Danish)
