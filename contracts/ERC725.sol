pragma solidity ^0.4.23;

contract ERC725 {
    uint256 constant MANAGEMENT_KEY = 1;
    uint256 constant ACTION_KEY = 2;
    uint256 constant CLAIM_SIGNER_KEY = 3;
    uint256 constant ENCRYPTION_KEY = 4;

    event KeyAdded(bytes32 indexed key, uint256 indexed purpose, uint256 indexed keyType);
    event KeyRemoved(bytes32 indexed key, uint256 indexed purpose, uint256 indexed keyType);
    event ExecutionRequested(uint256 indexed executionId, address indexed to, uint256 indexed value, bytes data);
    event Executed(uint256 indexed executionId, address indexed to, uint256 indexed value, bytes data);
    event Approved(uint256 indexed executionId, bool approved);

    // Key はアイデンティティに紐づく公開鍵またはコントラクトアドレス
    // 目的(1 = 管理, 2 = アクション, 3 = クレーム, 4 = 暗号化)、鍵の種類(1 = ECDSA, 2 = RSA)、鍵データ(公開鍵のバイナリかそのハッシュ)を含む
    struct Key {
        uint256[] purposes; // e.g. 1 = MANAGEMENT_KEY, 2 = ACTION_KEY, 3 = CLAIM_SIGNER_KEY, 4 = ENCRYPTION_KEY
        uint256 keyType;    // e.g. 1 = ECDSA, 2 = RSA, etc.
        bytes32 key;
    }

    // そのアイデンティティが存在する場合、Key のすべてのデータを返す
    function getKey(bytes32 _key) constant returns(uint256[] purposes, uint256 keyType, bytes32 key);

    // ある鍵が存在し、かつ、ある目的を持っているかどうかを bool で返す
    function keyHasPurpose(bytes32 _key, uint256 purpose) constant returns(bool exists);

    // そのアイデンティティが保持する公開鍵のバイナリの配列を返す
    function getKeysByPurpose(uint256 _purpose) constant returns(bytes32[] keys);

    // そのアイデンティティの Key を追加する
    //      1: MANAGEMENT_KEY(アイデンティティを管理する)
    //      2: ACTION_KEY(そのアイデンティティでアクションを実行する。例えば登録やログイン、トランザクションなど)
    //      3: CLAIM_SIGNER_KEY(取り消し可能でなければならない他のアイデンティティのクレームに署名するために使用される)
    //      4: ENCRYPTION_KEY(データの暗号化に使用される。例えばクレームの保持)
    // MANAGEMENT_KEY、またはそのアイデンティティ自身によってのみ行われなければならない(MUST)
    // Triggers Event: KeyAdded
    function addKey(bytes32 _key, uint256 _purpose, uint256 _keyType) returns (bool success);

    // そのアイデンティティの Key を削除する
    // MANAGEMENT_KEY、またはそのアイデンティティ自身によってのみ行われなければならない(MUST)
    // Triggers Event: KeyRemoved
    function removeKey(bytes32 _key, uint256 _purpose) returns (bool success);

    // 他のコントラクトの、またはそれ自体に対するアクション、または Ether の送金を実行する
    // MANAGEMENT_KEY または ACTION_KEY のうち、一つまたは複数の鍵の使用を必要とすべき(SHOULD)
    // この実行を承認または拒否するためには、返却される executionID の使用を必要とすべき(SHOULD)
    // Triggers Event: ExecutionRequested Triggers on direct execution Event: Executed
    function execute(address _to, uint256 _value, bytes _data) returns (uint256 executionId);

    // 実行またはクレーム追加を承認する
    // 実行の _to がアイデンティティコントラクト自身である場合、MANAGEMENT_KEY の n 個の m 個の承認を必要とすべき(SHOULD)
    // Triggers Event: Approved Triggers on successfull execution Event: Executed Triggers on successfull claim addition Event: ClaimAdded
    function approve(uint256 _id, bool _approve) returns (bool success);
}
