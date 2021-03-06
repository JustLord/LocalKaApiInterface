import Vapor
// UsersApiDelegate.swift
//
// Generated by vapor-server-codegen
// https://github.com/thecheatah/SwiftVapor-swagger-codegen
// Template Input: /APIs.Users


public enum usersPostResponse: AsyncResponseEncodable {
  case http200(User)

  public func encodeResponse(for request: Request) -> EventLoopFuture<Response> {
    switch self {
    case .http200(let content):
      return content.encodeResponse(for: request).map { (response: Response) -> (Response) in
        response.status = HTTPStatus(statusCode: 200)
        return response
      }
    }
  }

  public func encodeResponse(for request: Request) async throws -> Response {
    switch self {
    case .http200(let content):
      var response = try await content.encodeResponse(for: request)
      response.status = HTTPStatus(statusCode: 200)
      return response
    }
  }
}


public enum usersUsernameGetResponse: AsyncResponseEncodable {
  case http200(User)

  public func encodeResponse(for request: Request) -> EventLoopFuture<Response> {
    switch self {
    case .http200(let content):
      return content.encodeResponse(for: request).map { (response: Response) -> (Response) in
        response.status = HTTPStatus(statusCode: 200)
        return response
      }
    }
  }

  public func encodeResponse(for request: Request) async throws -> Response {
    switch self {
    case .http200(let content):
      var response = try await content.encodeResponse(for: request)
      response.status = HTTPStatus(statusCode: 200)
      return response
    }
  }
}

public protocol UsersApiDelegate: AnyObject {
  associatedtype AuthType
  /**
  POST /users */
  func usersPost(with req: Request, asAuthenticated user: AuthType, body: CreateUserRequestBody) async throws -> usersPostResponse
  /**
  GET /users/{username} */
  func usersUsernameGet(with req: Request, asAuthenticated user: AuthType, username: String) async throws -> usersUsernameGetResponse
}
