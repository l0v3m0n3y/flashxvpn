import asyncdispatch, httpclient, json, strutils

const api = "https://api.aslafvbn.shop"
var headers = newHttpHeaders({"Connection": "keep-alive",  "Host": "api.aslafvbn.shop",  "Content-Type": "application/x-www-form-urlencoded",  "accept": "application/json, text/plain, */*", "user-agent":"okhttp/4.12.0"})

proc get_apis*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  try:
    client.headers = headers
    let response = await client.get(api & "/client/user/getIw")
    let body = await response.body
    result=parseJson(body)
  finally:
    client.close()

proc get_servers*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  try:
    client.headers = headers
    let response = await client.get(api & "/app/customer/slgetNodesgs")
    let body = await response.body
    result=parseJson(body)
  finally:
    client.close()
