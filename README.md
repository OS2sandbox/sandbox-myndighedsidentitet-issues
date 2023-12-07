# 🪪 os2ID
## Identity management based on open standards

A modern identity and access management project, built for the cloud that provides Single Sign-On across OS2 delivered web-services.

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

### [🚀 Getting Started guide](/docs/GETTING_STARTED.md)

### 🗂️ Project description - [🇬🇧 in english](/docs/project_description.md#-os2id---identity-and-accessmanagent) -   [🇩🇰 in danish](/docs/project_description.md#-os2id---identitets--og-adgangsstyring)
  
### [🧩 High level architecture diagram](/docs/High_Level_Architecture.md)
 


---
🎁 [How to contribute](CONTRIBUTING.md)

⚖️ [CODE OF CONDUCT (in danish for now)](https://github.com/OS2offdig/about/blob/main/CODE_OF_CONDUCT.md)
