package raxe.tools;using Lambda;using StringTools;/** 
Error handling
 **/
class Error{
  /** 
  * Raise a new error formatted into json to be able to parse it everywhere
  * @param errorType Type of error to be thrown
  * @param error Error message to be sent
   **/
  public static function create(errorType: String, error: String) return{
    throw("{\"type\": \"" + errorType + "\",\"error\": \"" + error + "\"}");
  }
}
