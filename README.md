# timestamp-request

`./generate_ts_request.sh`

```
curl --location '<TIMESTAMP_SERVER_URL>' \
--header 'Content-Type: application/timestamp-query' \
--header 'Authorization: Basic <BASE64(USER.PASSWORD)>' \
--data '@ts_req.tsq' > ts_req.tsr
```
