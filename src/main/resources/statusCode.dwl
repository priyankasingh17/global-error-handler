fun generateHttpStatusCode(errorType) =
  errorType match {
    case "APIKIT:BAD_REQUEST" -> 400
    case "APIKIT:NOT_FOUND" -> 404
    case "APIKIT:METHOD_NOT_ALLOWED" -> 405
    case "APIKIT:NOT_ACCEPTABLE" -> 406
    case "APIKIT:UNSUPPORTED_MEDIA_TYPE" -> 415
    case "APIKIT:NOT_IMPLEMENTED" -> 501
    case "HTTP:BAD_REQUEST" -> 400
    case "HTTP:UNAUTHORIZED" -> 401
    case "HTTP:FORBIDDEN" -> 403
    case "HTTP:NOT_FOUND" -> 404
    case "HTTP:METHOD_NOT_ALLOWED" -> 405
    case "HTTP:NOT_ACCEPTABLE" -> 406
    case "HTTP:CONFLICT" -> 409
    case "HTTP:UNSUPPORTED_MEDIA_TYPE" -> 415
    case "HTTP:PARSING" -> 420
    case "HTTP:SECURITY" -> 421
    case "HTTP:TOO_MANY_REQUESTS" -> 429
    case "HTTP:RETRY_EXHAUSTED" -> 429
    case "HTTP:INTERNAL_SERVER_ERROR" -> 500
    case "HTTP:BAD_GATEWAY" -> 502
    case "HTTP:SERVICE_UNAVAILABLE" -> 503
    case "HTTP:GATEWAY_TIMEOUT" -> 504
    case "HTTP:CONNECTIVITY" -> 503
    case "MULE:EXPRESSION" -> 400
    case "MULE:TIMEOUT" -> 504
    case "MULE:UNKNOWN" -> 500
    case "OS:STORE_NOT_AVAILABLE" -> 500
    case "OS:KEY_NOT_FOUND" -> 404
    case "OS:INVALID_KEY" -> 409
    case "OS:KEY_ALREADY_EXISTS" -> 500
    case "OS:NULL_VALUE" -> 500
    case "OAUTH2-PROVIDER:INVALID_CONFIGURATION" -> 400
    case "OAUTH2-PROVIDER:INVALID_TOKEN" -> 401
    case "OAUTH2-PROVIDER:TOKEN_UNAUTHORIZED" -> 401
    case "OAUTH2-PROVIDER:NO_SUCH_CLIENT" -> 403
    case "OAUTH2-PROVIDER:CLIENT_ALREADY_EXISTS" -> 409
    case "OAUTH2-PROVIDER:OAUTH_SERVER_SECURITY" -> 500
    case matches /\w+\:(INVALID_INPUT)/ -> 400
    case matches /\w+\:(INVALID_CACHE)/ -> 400
    case matches /\w+\:(ILLEGAL_PATH)/ -> 400
    case matches /\w+\:(ILLEGAL_CONTENT)/ -> 400
    case matches /\w+\:(VALIDATION)/ -> 400
    case matches /\w+\:(UNAUTHORIZED)/ -> 401
    case matches /\w+\:(INVALID_CREDENTIALS)/ -> 401
    case matches /\w+\:(INVALID_SESSION)/ -> 401
    case matches /\w+\:(FORBIDDEN)/ -> 403
    case matches /\w+\:(ACCESS_DENIED)/ -> 403
    case matches /\w+\:(FILE_LOCK)/ -> 403
    case matches /\w+\:(SECURITY)/ -> 403
    case matches /\w+\:(NOT_FOUND)/ -> 404
    case matches /\w+\:(FILE_DOESNT_EXIST)/ -> 404
    case matches /\w+\:(FILE_ALREADY_EXISTS)/ -> 409
    case matches /\w+\:(RETRY_EXHAUSTED)/ -> 429
    case matches /\w+\:(NOT_SUPPORTED)/ -> 500
    case matches /\w+\:(PARSING)/ -> 500
    case matches /\w+\:(SYSTEM_BUSY)/ -> 500
    case matches /\w+\:(METADATA_UNAVAILABLE)/ -> 500
    case matches /\w+\:(TIMEOUT)/ -> 504
    case matches /\w+\:(TRANSACTION)/ -> 500
    case matches /\w+\:(TRANSFORMATION)/ -> 500
    case matches /\w+\:(UNKNOWN)/ -> 500
    case matches /\w+\:(MUTUAL_AUTHENTICATION_FAILED)/ -> 500
    case matches /\w+\:(INSUFFICIENT_PERMISSIONS)/ -> 500
    case matches /\w+\:(OPERATION_NOT_SUPPORTED)/ -> 500
    case matches /\w+\:(UNAVAILABLE)/ -> 500
    case matches /\w+\:(COMMUNICATION)/ -> 500
    case matches /\w+\:(LIMIT_EXCEEDED)/ -> 500
    case matches /\w+\:(SERVER_ERROR)/ -> 500
    case matches /\w+\:(UNKNOWN_HOST)/ -> 500
    case matches /\w+\:(CANNOT_REACH)/ -> 500
    case matches /\w+\:(DISCONNECTED)/ -> 500
    case matches /\w+\:(CONNECTION_TIMEOUT)/ -> 502
    case matches /\w+\:(CONNECTIVITY)/ -> 503
    else -> 500
  }