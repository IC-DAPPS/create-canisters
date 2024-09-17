import User "acterclass";
import Principal "mo:base/Principal";
import Buffer "mo:base/Buffer";

actor {
let users = Buffer.Buffer<User.User>(1);

  public func createCanister(name : Text) : async Principal {
    let newcanister = await User.User(name);
    let canisterId : Principal = Principal.fromActor(newcanister);
    users.add(newcanister);
    canisterId
  };

};


