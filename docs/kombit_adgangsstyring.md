# Introduction

"KOMBIT Adgangsstyring" is based on **OIOSAML**, which is a specialized configuration / implementation of the SAML (Security Assertion Markup Language) protocol. A primary component of the login flow is the “Context Handler”. The Context Handler is a SAML IdP-proxy that issues access to applications that are registered in the “Fælleskommunale infrastruktur”. The scope of access to the application is defined by the user’s associated municipality’s local IdP which also registers with the Context Handler. The local IdP defines authentication and authorization: 
<ul>
<li>**Authentication** defines the user’s identity and association with the organization.</li>
<li>**Authorization** defines the the rights of the user – what they are allowed to do and access. This is controlled by “jobfunktionsroller” and “dataafgrænsinger” (english: functional job-roles, and data-limitations)</li>
</ul>
The Context Handler acts as a proxy between local IdP and application, such that the user never communicates directly with local IdP. An assortment of guides on how to use the Context Handler can be found at [digitaliseringskataloget](https://digitaliseringskataloget.dk/l%C3%B8sninger/adgangsstyring-brugere) in the section "Vejledninger".


# How to connect to to Kombit Adgangstyring

( Warning: This doc is a work in progress and might not cover the process in its entirety - or, a worst, *correctly*)

- For every IT-system (service provider) connected to the "Faelleskommunale Infrastruktur" (FKIS) a  FOCES certifikat is needed. FOCES certificates aries from the OCES-standard, which is a certficate standard developed by "IT and Telestyrelsen". These certificates must be ordered from NETS.

- To make use of Kombit Adgangstyring, the Context Handler and the "Faelleskommunale Infrastruktur" (adgangstyring and administrationsmodul), one must first register as a provider with Kombit. This is required to be able to configure IT-systems (service-providers).

- IT systems, aka. fagsystemer aka. a "SAML service provider", can be configured in the "Faelleskommunale Administrationsmodul" (FKAM). For your Service Provider to able to communicate with the Context Handler, "trust" (in quotation, as this is a SAML keyword) **must** be established to the service provider. In order to establish trust, your service provider must generate a SAML metadata file and supply this to the FKAM under the service provider configuration. Likewise, the service provider must be able to reach the metadata of the Context Handler. In order to generate valid SAML metadata you need to have a valid FOCES certificate.

- In general, there is "chain of trust" in the FKIS. For each municipality, the Context Handler has a trust to the local IdP. This allows the Local IdP to generate and Assertion (essentially a user authorization) which is then delievered to the Context Handler. The Context Handler, which further needs to trust your service-provider (in our case, Authentik) will then forward the assertion, alongside "SAMLAttributes" which include user ID, email, jobroles and datalimitations (as defined by the FKAM).

- There are **three** primary parameters that define the SAML configuration of your service provider. The unique "entityID" that defines your system as well as the "AssertionConsumerService" and "SingleLogoutService" endpoints that accept Authentication requests / responses.

Certificates needed to establish trust for components in FKIS can be found [here](https://digitaliseringskataloget.dk/teknik/certifikater)

- Before you can use the Faelleskommunale Administrationsmodul, you must first send an application to KOMBIT. The formula can be found [here](https://digitaliseringskataloget.dk/oprette-organisation-i-det-faelleskommunale-administrationsmodul). Furthermore, guidelines regarding use of the external testing environment can be found [here](https://digitaliseringskataloget.dk/retningslinjer-eksternt-testmiljoe).

