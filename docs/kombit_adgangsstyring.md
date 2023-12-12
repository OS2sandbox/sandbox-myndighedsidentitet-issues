# Introduction

"KOMBIT Adgangsstyring" is based on **OIOSAML**, which is a specialized configuration / implementation of the SAML (Security Assertion Markup Language) protocol. A primary component of the login flow is the “Context Handler”. The Context Handler is a SAML IdP-proxy that issues access to applications that are registered in the “Fælleskommunale infrastruktur”. The scope of access to the application is defined by the user’s associated municipality’s local IdP which also registers with the Context Handler. The local IdP defines authentication and authorization: 
<ul>
<li>**Authentication** defines the user’s identity and association with the organization.</li>
<li>**Authorization** defines the the rights of the user – what they are allowed to do and access. This is controlled by “jobfunktionsroller” and “dataafgrænsinger” (english: functional job-roles, and data-limitations)</li>
</ul>
The Context Handler acts as a proxy between local IdP and application, such that the user never communicates directly with local IdP. An assortment of guides on how to use the Context Handler can be found at [digitaliseringskataloget](https://digitaliseringskataloget.dk/l%C3%B8sninger/adgangsstyring-brugere) in the section "Vejledninger".

###### More to come...
