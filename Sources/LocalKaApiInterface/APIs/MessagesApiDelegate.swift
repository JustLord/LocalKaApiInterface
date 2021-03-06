import Vapor
// MessagesApiDelegate.swift
//
// Generated by vapor-server-codegen
// https://github.com/thecheatah/SwiftVapor-swagger-codegen
// Template Input: /APIs.Messages


public enum chatsChatIdGetResponse: AsyncResponseEncodable {
  case http200([Message])

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


public enum chatsChatIdPostResponse: AsyncResponseEncodable {
  case http200(Message)

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


public enum usersUsernameDirectPostResponse: AsyncResponseEncodable {
  case http200(Message)

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

public protocol MessagesApiDelegate: AnyObject {
  associatedtype AuthType
  /**
  GET /chats/{chat_id} */
  func chatsChatIdGet(with req: Request, asAuthenticated user: AuthType, chatId: UUID, beforeId: Int?, limit: Int?) async throws -> chatsChatIdGetResponse
  /**
  POST /chats/{chat_id} */
  func chatsChatIdPost(with req: Request, asAuthenticated user: AuthType, body: PostMessage, chatId: UUID) async throws -> chatsChatIdPostResponse
  /**
  POST /users/{username}/direct */
  func usersUsernameDirectPost(with req: Request, asAuthenticated user: AuthType, body: PostMessage, username: String) async throws -> usersUsernameDirectPostResponse
}
