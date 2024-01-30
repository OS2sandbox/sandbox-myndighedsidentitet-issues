# 👣 Step-by-Step Guide

## 1. Obtain a Certificate


> [!IMPORTANT]  
> Section not done - Add info about cost and billing

To verify ownership of your IT-system and secure communications between it and [Fælleskommunal Infrastruktur](https://digitaliseringskataloget.dk/om-den-f%C3%A6lleskommunale-infrastruktur) (FKI) a certificate is needed.

To order a certificate for your system, [log in to MitID Erhverv](https://mitid-erhverv.dk) and follow the guide linked below.

### 🔗 Links
> [MitID Erhverv - Login](https://mitid-erhverv.dk)
>
> [MitID Erhverv support - Guide for ordering a certificate ](https://mitid-erhverv.dk/support/vejledning/anvendelse/brugeradministrator/certifikater/bestil-et-organisationscertifikat/)

 ## 2. Register as a service provider

> [!IMPORTANT]  
> Section not done - Need more info on employee access rights management in MitID erhverv.

To gain access to the web based administration tools you need to register as a service provider to the FKI. 

1. Register your organisation as a service provider in Fælleskommunal Infrastruktur (FKI) by initiating an order via the "Bestil" button on the order page: [Oprette organisation i det Fælleskommunale Administrationsmodul](https://digitaliseringskataloget.dk/oprette-organisation-i-det-faelleskommunale-administrationsmodul)

2. Fillout the order form - *Information regarding price, and more, can be found on the [order page](https://digitaliseringskataloget.dk/oprette-organisation-i-det-faelleskommunale-administrationsmodul).*

3. Wait for approval from KOMBIT?
> [!IMPORTANT]
>  How is the approval communicated? mail? to who?

After registration and subsequent approval from KOMBIT
sign-in to the Administration module will happend throught MitID???
Any employee that needs to access the administration module, will need to be granted the right access level by an administrator of the company, which is managed through MitID erhverv???

> [!IMPORTANT]
> What is this access level called? Where is the level administered, in MitID Erhverv or in the fk adminportal? Is it the role of "administrator of a company" or the role of "administration module access" that is administered throug the mit ID erhverv adminportal?



## 3. Create your organisation
This step can be skipped if your organization allready exists

1. Log in to the common municipal administration system with your username and password. You can access the system from this link: [Administrationsmodul].
2. On the main page, click on the **Organisation** tab on the left side menu. This will open a list of all the existing organizations in the system.
3. To create a new organization, click on the **Opret ny organisation** button at the top right corner of the page. This will open a form where you can enter the details of your organization.
4. Fill in the required fields, such as **Navn** (Name), **Adresse** (Address), **Telefon** (Phone), **E-mail** (Email), etc. You can also add optional fields, such as **Beskrivelse** (Description), **Budget** (Budget), **Mål** (Goals), etc.
5. When you are done, click on the **Gem** button at the bottom of the form. This will save your organization and add it to the list of organizations in the system.

## 4. Register and configure IT System

1. Log in to the administration webportal Fælleskommunalt Administrationsmodul (FKAM) using MitID

2. Select “IT Systems” from the left menu and click on the “Connect IT System” button.

3. Fill in the information on the Basic Data tab<details><summary>(Click to expand field explanations):</summary> **UUID**: Normally, this field is auto-generated when you save. If you need a specific UUID, you can enter it here. Note that you can’t change the UUID later.
<br>**Name:** Enter a descriptive name for the IT system you want to connect.<br>**Email:** Enter the email address your organization wants to use for this IT system. This email will be contacted if there are issues with the IT system. The email should not be person-dependent (e.g., IT support).
<br>**Description:** Add a description of the IT system (optional).
<br>**Type:** Choose one or more of the following system types:
<br>**User System:** A system that uses a service, where access to the service is controlled via service agreements.<br>**User-facing System:** A system that displays a secure and access-protected user interface accessed via a browser.
<br>**Identity Provider:** A system that issues tokens with rights for one (or more) authority’s users.<br>**Service Provider:** A system that offers a service. A service offered by a service provider is often accessed by a User System via a connected service on the Service Platform. Depending on the type chosen, the corresponding tabs are activated, where data is created for the specific system type. Note that once you have saved the IT system, you cannot deselect already chosen types, but you can add a new type.
<br>**Authority Limitation:** Also called a “whitelist”, it means that only the authorities you choose from the list are allowed to use the IT system. If no authorities are chosen, all authorities may use the IT system. If you want to limit which authorities are allowed to access the IT system, select the relevant authorities from the list. The limitations you choose for the IT system are applied to:
    - Service Agreements
    - Federation Agreements
    - Job Function Roles
<br>**Save IT System Note:**You can save at any time. Before you can save an IT system, you must click on the link “Accept terms and conditions” which is displayed at the bottom of each tab. After accepting the terms and conditions, press “Save”, after which you will return to the overview of IT systems.
</details>
<br>
3. Establish trust between your SP and the Context Handler (IdP) by exchanging SAML metadata between IdP and SP.

The metadata is typically generated automtically by your SAML framework, based upon your configuration. The metadata contains infomration such the ID of your service provider, the URL where authentication SAMLRequests are sent, the "Assertion Consumer Service" url where the SAMLResponses should be returned, which user attributes are requested, certificate information for use in signing and encrypting the SAMLRequest and more. An example of how your SP metadata should look like can be found on the [introduktionside](https://digitaliseringskataloget.dk/l%C3%B8sninger/adgangsstyring-brugere) under "Vejledninger" and "[Eksempel: metadata for brugervendt system](https://digitaliseringskatalog.dk/sites/default/files/2020-05/Brugervendt%20system%20metadata%20eksempel.xml)". Please note that all endpoints included in the metadata require that you use HTTPS, else FKIS will __not__ accept the metadata.
When you have generated your metadata sign in to the administration module ... (more to come)
(5.4 Tilslut IT-system)
- https://digitaliseringskataloget.dk/sites/default/files/integration-files/081120231129/Brugervejledning%20til%20Administrationsmodulerne%20for%20leverand%C3%B8rer.pdf

### 🔗 FKAM Web Portal acess

> [Test - https://admin-test.serviceplatformen.dk/](https://admin-test.serviceplatformen.dk/)
>
> [Prod - https://admin.serviceplatformen.dk/](https://admin.serviceplatformen.dk/)

### 📖 Official user guides

> [Brugervejledning for
> leverandører - docs.kombit.dk](https://docs.kombit.dk/id/3921b1af "docs.kombit.dk") (🇩🇰 in Danish)
>
> [Video guide - Tilslut brugervendt system](https://vimeo.com/484429700#t=187s "vimeo.com") (🇩🇰 in Danish, old video guide from 2020)

> [!IMPORTANT]  
> Section not done - how to establish the trust - screenshots?

#### 


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
