# Uport
https://developer.uport.me/
https://developer.uport.me/overview

## Uport Protocol
uPortプロトコルは、下記と互換性がある。

- Rebooting Web of Trust ワークショップを通じて作成された分散識別子 (DID) 仕様
- Decentralized Identity Foundation と W3C Credentials Community group によるID関連の標準化活動

## Uport Identity Contracts
https://github.com/uport-project/uport-identity

### ID
- Ethereum ネットワーク上のuPort IDとアカウント
- 現在のバージョンは Proxy Contract

#### Requirements
- トランザクション転送
- 所有者変更

Document:
https://github.com/uport-project/uport-identity/blob/develop/docs/proxy.md
Code:
https://github.com/uport-project/uport-identity/blob/develop/contracts/Proxy.sol

### Identity Manager
- Ethereum 上でアイデンティティを作成および管理する簡単な方法を提供
- 現在のバージョンは MetaIdentityManager

#### Requirements
- アイデンティティの作成
- 新しい所有者の追加削除、鍵の損失からの回復、回復の変更、譲渡

Document:
https://github.com/uport-project/uport-identity/blob/develop/docs/identityManager.md
Code:
https://github.com/uport-project/uport-identity/blob/develop/contracts/IdentityManager.sol

### Claim Registry
Document:
https://github.com/ethereum/EIPs/issues/780
Code:
https://github.com/uport-project/ethereum-claims-registry

## Library
uPort が提供するオープンソースライブラリ

uPort Connect: WebアプリケーションがuPort Walletと通信できるようにします。デスクトップWebアプリケーションはQRコードとプッシュ通知を使用してメッセージを転送し、モバイルWebアプリケーションはapplinkを使用します。
https://github.com/uport-project/uport-connect

uPort Identity: ID, ID Managerなどを含むuPort IDコードのライブラリを提供します。
https://github.com/uport-project/uport-identity

uPort Credentials: 要求トークンと資格情報を含むJWTステートメントを簡単に生成できます。これは現在、uPort JSライブラリにラップされています。
https://github.com/uport-project/uport-js

uPort JWT: uPort PKIに対する署名の検証を容易にします。これは現在、uPort JSライブラリにラップされています。
https://github.com/uport-project/uport-js
https://github.com/uport-project/did-jwt

uPort Mobile SDK: uPort対応のモバイルアプリケーション用のネイティブモバイルライブラリ。近日公開。

## DIF との関連
https://github.com/uport-project/ethr-did
https://github.com/uport-project/ethr-did-registry
https://github.com/uport-project/ethr-did-resolver

## 仕様
https://developer.uport.me/readme
https://github.com/uport-project/specs

## refs
Different Approaches to Ethereum Identity Standards
https://medium.com/uport/different-approaches-to-ethereum-identity-standards-a09488347c87
