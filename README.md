# 🪪 sandbox-myndighedsidentitet
## Identity management based on open standards

Open source identity and sso provider that prioritizes security and control of your most sensitive data.

The upstream project [Authentik](https://github.com/goauthentik/authentik/) has been chosen as the core, because of its loosely coupled design, ability to bridge legacy protocols to modern equivalents like OpenID Connect and its focus on reusing standard stack components like standard database and cache solutions.  

Using Authentik reduces the need for extensive in-house coding and maintenance and simplifies development by providing ready-made, secure authentication and authorization. This approach aims to  free developers to focus on core business functionalities instead of reinventing general infrastructure components. 

Adopting Authentik makes it possible to cuts costs and ensure compliance with industry standards, enhancing overall security and reliability. Continuous updates from the open source community ensures that the business can adapt quickly to evolving security requirements and get the benefits from a large community of specialists that contribute to the project.



### 🗓️ Roadmap
Check out where we are, what issues we are working on and when we estimate we are done with the defined milestones:

[Roadmap with milestones and due dates](https://github.com/OS2lab/os2ID/milestones?direction=desc&sort=completeness&state=open)


### 🔀 Dataflow

```mermaid

graph TD

subgraph OS2
    OS2ID[["⚙️ OSID"]]-.-|"🆔"|Users["🛢 User cache"]
    OS2ID[["⚙️ OSID"]]-.-|"🏷️"|Roles["🏷️ Roles"]
    Applikation1([OS2-Kommunikation])
    Applikation2([OS2-Fildeling])
end

subgraph KK[Korsbæk Kommune]
UserStore[("Users")]
User
end

subgraph KOMBIT
fkadg[[" ⚙️Fælleskommunal Adgangsstyring"]]
end

KOMBIT-->|"🆔+🏷️ SAML"|OS2ID

User("user👩🏻‍💻")-->|"🆔 Single Sign On"|OS2ID-->|" 🎟️ Token"|Applikation2 & Applikation1
UserStore-.-|"🆔+🏷️"|fkadg

```

## 📚 Documentation

#### 🗂️ Project description:
  [🇬🇧 in english](/docs/project_description.md#-os2id---identity-and-accessmanagent)
  
  [🇩🇰 in danish](/docs/project_description.md#-os2id---identitets--og-adgangsstyring)
  
  [🧩 High level architecture](/docs/High_Level_Architecture.md)
 
---
🎁 [How to contribute](CONTRIBUTING.md)

⚖️ [CODE OF CONDUCT (in danish for now)](https://github.com/OS2offdig/about/blob/main/CODE_OF_CONDUCT.md)
