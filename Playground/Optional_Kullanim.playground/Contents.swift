import UIKit

// Optional , Nullable , Null Safety


//var message : String? = nil
var message : String?

message = "deneme"

if message != nil {
    
    print(message!) // optional unwrap
    
}else {
    
    print("mesaj boş")
    
}

if var temp = message {// Optional binding
    
    print(temp)
    temp = "How are you"
    print(temp)
    
}else {
    
    print("Message boş")
    
}


