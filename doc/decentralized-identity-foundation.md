# Decentralized Identity Foundation (DIF)
統一された分散アイデンティティエコシステムの構築のため、uPort, Microsoft, Blockstack, Sovrinなどにより結成

http://identity.foundation/
https://medium.com/decentralized-identity/the-rising-tide-of-decentralized-identity-2e163e4ec663

## ニーズと技術的課題
- プロバイダが所有または管理していない自己所有者識別子の登録を可能にする
- 分散システム全体で識別子とデータを検索および検出できる
- ユーザーが機密性の高いIDデータを安全に保管し、他のユーザーと共有される内容を正確に管理できるようにする仕組みを提供する

## 技術コンポーネント
![](https://cdn-images-1.medium.com/max/1600/1*zzyFrx56I_SzDEUxEglCjw.png)

- Blockchains/Ledgers or other Decentralized Systems
- Universal Resolver
- Identity Hubs
- Hub-Associated Devices

## DIF の取り組み
分散型識別子(DID): 分散型システムに根ざした識別子を確立して管理するための仕様

Universal Resolver: すべての分散システム間でDIDの解決と発見を可能にする、DID Method driversのpluggable systemを備えたサーバ

Universal Registrar: 互換性のあるドライバを生成する任意の分散システム間でDIDの登録を可能にするサーバ

Identity Hub: 署名/暗号化されたデータのストレージを調整し、アイデンティティにリンクされたデバイスにメッセージを中継する安全な個人データストア

### Universal Resolver
document:
https://github.com/decentralized-identity/universal-resolver/
introduction:
https://medium.com/decentralized-identity/a-universal-resolver-for-self-sovereign-identifiers-48e6b4a5cc3c

## メモ
- 分散システムのための識別子 DID
- DID の解決のためのユニバーサルリゾルバ
- DID の登録のためのユニバーサルレジストラ
- アイデンティティを安全に保管し、外部とのメッセージを中継するアイデンティティハブ
