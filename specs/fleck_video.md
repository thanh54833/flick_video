Collection of specifications for the Clip Host.

## Documents:

+ List play usage : https://jhomlala.github.io/betterplayer/#/listplayerusage
+ Buffering configuration : https://jhomlala.github.io/betterplayer/#/bufferingconfiguration

## Packages :

+ preload_page_view : https://pub.dev/packages/preload_page_view
+ better_player_plus  : https://pub.dev/packages/better_player_plus

shoppe:

```
+ Home: 2 video đầu play.
+ Navigation: Home to Video -> play video -> Video to Home -> pause video.
+ Protect spam: Swipe next video fast -> captcha
+ Format file:
 
```

# Json Shopee:

## Extract json:

```
+ "watermark_cover_url": "vn-11134114-7r98o-lvx77ze7dmmx0c",
+ "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003551717071863.2569.mp4",
```

Format of video file:

## Api Get All Videos:

```
curl 'https://sv.shopee.vn/api/v2/timeline/unify/following' \
-X POST \
-H 'Host: sv.shopee.vn' \
-H 'Connection: keep-alive' \
-H 'did: 640CA8FDF8724833B02C48D7F935E2FA' \
-H 'sdk-version: 1.51.8' \
-H 'Accept: application/json, text/plain, */*' \
-H 'x-requested-from: rn' \
-H 'Client-Request-Id: 2d048718-b53d-4be0-bc61-9fa3661a3810.1131' \
-H 'af-ac-enc-sz-token: Lj1es6gCWGBqyzOhowRXbg==|c+WEb1pI2FgZF5xy4h5+JiNrrwM3laAGGitP3CWKlHlVKGm1lYiLNYTd0m+rFknbS/cIcdpyRF20HePsUXjrkWPZ|0PdxisADO1HDTvo2|08|2' \
-H 'User-Agent: language=vi app_type=1 platform=native_ios appver=32728 os_ver=17.5.1 Cronet/102.0.5005.61' \
-H 'sv-pre-page: ' \
-H '5e49a570: +ngqQFrwTydovpkmjjAjSHlvJ3Q=' \
-H 'af-ac-enc-dat: YWNzCjAwNABfUFDtDy7RApEBAAABAgEAsAAAABEdxgbub3cajtymbci8gYpEe1lCSfpB7GRPcMc/zApeUEYk0TAhJYxpNRBMWwqvF1djP6s1ERjtKhF+C2cEKXuMlxvou/k6OlUitjOenA64x2TCf92+tRTtxxGq6jrwja5s7vi1L7SnPZZehGHATyf4naBOAYMufAoZHErFw3iawoJgCSqydoKJXAif00KS2AT2Kd1KVe5Rp3gAsYUhPea9slgeZcUrvadsudVxa14N' \
-H 'os-type: 1' \
-H 'X-Shopee-Client-Timezone: Asia/Ho_Chi_Minh' \
-H 'sv-source-page: ' \
-H 'af-ac-enc-id: y534fI2Ygr8phy8rYaJqQo1ayL6XXlEsgSyfT/UvLpl3Mf48yTKadG8xsUrdH7utK0E9XA==' \
-H 'requestinfo-enc: %7B%22deviceInfo%22%3A%7B%22brand%22%3A%22Apple%22%2C%22appDeviceName%22%3A%22iPhone14%2C5%22%2C%22model%22%3A%22iPhone14%2C5%22%2C%22appOSVersion%22%3A%2217.5.1%22%2C%22platform%22%3A1%7D%2C%22networkInfo%22%3A%7B%22networkType%22%3A%22wifi%22%7D%2C%22locationInfo%22%3A%7B%22addresses%22%3A%5B%22TP.%20H%E1%BB%93%20Ch%C3%AD%20Minh%22%2C%22Qu%E1%BA%ADn%207%22%2C%22Ph%C6%B0%E1%BB%9Dng%20T%C3%A2n%20Ph%C3%BA%22%5D%2C%22gps%22%3A%7B%22latitude%22%3A10.729330365761957%2C%22longitude%22%3A106.71950099243722%7D%7D%7D' \
-H 'os-system-version: 17.5.1' \
-H 'X-CSRFToken: fpsOG0zmXwDjYfmYIcdHkOjsAt5VD2es' \
-H 'x-sap-ri: 2faaa86617574e4ea7e5262b01ec610b270eb14384caa42b8723' \
-H 'model: iPhone 13' \
-H '79caf736: 4OvE7rfJbMny4aSQmHFG4RAk9mIVBH8WM0bWwFZZJzRgB8DjGpEVHWfvkVIF8GIbAOHP1XLfsHGvNFW7Ow1TH2WWoo8vl4gxFsAL4XEpKSahXnLVAqb1UX9oEyKB7X3Hz0CDIB3ArH3hjPqFjZHKln9i86VE2MHwXVZRYDQ0uI9ei7FXSJqTr8m62LqGSrpZXUASat8qjJSCnQFqrlX+KNUEk1HZ/xnJhVoFrbZp994Rm967cOPQrOk/DrIeQ97UYpqc/oS3BGzbByUF7uPGhGJsjfsm5hiBavxkcpWNFvrk54i7wBAGp5oiao7oOrkB6QEal463w4nNtSw0RXjbpCoz4wIi0ulEPVVD1oRjOo2pwuVLuZnljznzV5NthmjLNid2u05QgtW1gjKhwhlzAWYsXVIm5QPW22KSHm5Mr6BOTqHtNqimEUmK0VNd/8qcUJjbJZOCXaFpvnAejbadzbGO9IiLN12jrE+4TYY5iz8LQgHQhrtCaK5gK8mzCD+G71qCmQYc3EV2uF99G0Okmq3CfKMRYNHU59DKdXrPDweEVltLt2oylhAo0ZUrxxnlmyvIVX52qSkIq4xbqJJtOm0ZZbpP3w7hUM94zjZeBf8L8IW6R+GkJrCryi0pnL5ND/6pHCfKlGdd7E5u' \
-H 'requestinfo: {"deviceInfo":{"brand":"Apple","appDeviceName":"iPhone14,5","model":"iPhone14,5","appOSVersion":"17.5.1","platform":1},"networkInfo":{"networkType":"wifi"},"locationInfo":{"addresses":["TP. Hồ Chí Minh","Quận 7","Phường Tân Phú"],"gps":{"latitude":10.729330365761957,"longitude":106.71950099243722}}}' \
-H '249408d2: 3wedXlXM3Frq415273rI7FEMYGw=' \
-H 'sfid: Lj1es6gCWGBqyzOhowRXbg==|c+WEb1pI2FgZF5xy4h5+JiNrrwM3laAGGitP3CWKlHlVKGm1lYiLNYTd0m+rFknbS/cIcdpyRF20HePsUXjrkWPZ|0PdxisADO1HDTvo2|08|2' \
-H 'sv-req-timestamp: 1722329647474' \
-H 'sv-from-source: video_tab' \
-H '50bb58de: qRzRy3wgyaYlK9FBedMLqoOsMIT=' \
-H 'android-performance: 0' \
-H 'fid: 640CA8FDF8724833B02C48D7F935E2FA' \
-H 'language: vi' \
-H 'x-request-id: 000003eb1e731ed2e5b3000000000000:0000000000000000:0000000000000000' \
-H 'Accept-Language: vi-VN,vi,fr-FR,fr,en-US,en' \
-H 'Content-Type: application/json' \
--cookie 'REC_T_ID=598e1b28-344c-11ef-9c80-6a620c813b5e; SPC_SEC_SI=v1-OUE0WGg3S0lwZmhxY2xQR7tQHE9h5ivyWAYnCEpFvZ1lxAimFuTyCAAY9BQcOOeRZsaTlYik4An2qeLLDRsnVzTaoG0LfqmJaZ9ar62kTjQ=; _ga=GA1.1.1170086247.1722323683; _ga_4GPP1ZXG63=GS1.1.1722323682.1.0.1722323682.60.0.0; AC_CERT_D=U2FsdGVkX1+AImxOXP7pKpH+8xdcz+2T/+BwAzLMhEYxwtPwSV4gPa4lXM2YKhBRIT11iQZUIcooxYWcXh2MaWw9AV9qTMk7m0xR0dr6teBj+PRvKp/sS4Yp9VgSmYbA/Ym1NM31MM7GLrsRwQCbkZj/gKOl5LCjva/Pk2uYLGmMyetLgr6DF/ggKCjqHPSSRuCPXsTxpCoFCQTYSjQ5mk0TMY2vkLjhgsw3mghDM86ocwc8aimMo4TMCC+2ohGR2Y8F/LJYPZ76JKS8JNOSHOboCjMACdoRGIJ0Nrm2rrGc5eahR8sauxWbl9szy0jrtvDfbd6ZhuijhkkexeKgBd9UvLwXOFeGBXZNTg6awFz7HiODSmsPQyoFE0AwH7YgN4kZ3OxEVC5nxDEcEgQPgvwPGMTVNFs2zsewy5+30D0=; _fbp=fb.1.1720976562693.238960141298026425; _gcl_au=1.1.1110100363.1720677962; SPC_F=640CA8FDF8724833B02C48D7F935E2FA; SPC_AFTID=102D401D-ADAC-4235-8052-4B96ED52733D; SPC_CLIENTID=NjQwQ0E4RkRGODcyrfgszjjmnuhvuxsf; shopee_token=GQXd6RPoPaoF01LprYkQ3ppj5QdDEyNlykFXkEk98J43MveZLigt5970C3rynRGK; shopid=762815927; userid=762799681; username=o17m6vudts; csrftoken=fpsOG0zmXwDjYfmYIcdHkOjsAt5VD2es; shopee_app_version=32728; shopee_rn_bundle_version=6018015; shopee_rn_version=1717168401; SPC_B_SI=pGWfZgAAAABqSDZVS0V1Y/R0YQAAAAAATVlTMk51d28=; SPC_U=762799681; SPC_EC=.ckRsNUVjczljZEVDVHNlS6SDxq8vy1CJ+VnsayYLi+vDOGUlACGUra8N3pJnMwN1jV1sMIhOdcxTkClPm1l4LruaMZyZZCRYDig2wtLSJNeXPjD2iiEFQnPbqJXODI/xtsmsydKx/7O2b5or6bdHR6wliiwFoVwUZw5RmpCz8H2I274W8KBtA6XIhScPO1ckSocCAM+C/LJ0N/M8AJYnEw==; SPC_R_T_ID=EfgYttqCU/ZhzN6fzRavvmNtO1kWXi0z5MRHwOXYeV2GuFBNvLaWaEcIuiCDgycTn5Gs3W+ZfoAy+CFUN70xsnWSLv5xASMEoLYREpzhlTax6Ucbo12yqOkhNutwbmCm7fWacaPpvHFB6ceLkuWQEPP6Qm+1awTs+Qw10kQJD7Q=; SPC_R_T_IV=b2RqMnZicVo5TW84M1o0dA==; SPC_T_ID=EfgYttqCU/ZhzN6fzRavvmNtO1kWXi0z5MRHwOXYeV2GuFBNvLaWaEcIuiCDgycTn5Gs3W+ZfoAy+CFUN70xsnWSLv5xASMEoLYREpzhlTax6Ucbo12yqOkhNutwbmCm7fWacaPpvHFB6ceLkuWQEPP6Qm+1awTs+Qw10kQJD7Q=; SPC_T_IV=b2RqMnZicVo5TW84M1o0dA==; SPC_SI=iGOfZgAAAAAxRTFkMGthcvvIYwAAAAAARHRPUnRNa24=; SPC_ST=.ckRsNUVjczljZEVDVHNlS6SDxq8vy1CJ+VnsayYLi+vDOGUlACGUra8N3pJnMwN1jV1sMIhOdcxTkClPm1l4LruaMZyZZCRYDig2wtLSJNeXPjD2iiEFQnPbqJXODI/xtsmsydKx/7O2b5or6bdHR6wliiwFoVwUZw5RmpCz8H2I274W8KBtA6XIhScPO1ckSocCAM+C/LJ0N/M8AJYnEw==' \
--data-raw '{"limit":6,"page_context":"[\"MwfIAxoVBgBEalASAAAAAA==\",\"p4d22NPRBQAKzBoAAAAAAA==\",\"rMeFcereBQBEalASAAAAAA==\",\"2ABAXkjFBQAKzBoAAAAAAA==\",\"cwafFN_oBQBEalASAAAAAA==\",\"0sYdMnzPBQBEalASAAAAAA==\"]","landing_post_id":"","rec_request_info":"{\"dayPages\":11,\"sessionPages\":9,\"interactDataFromVideo\":[{\"videoId\":\"M0G7NTHhBQBEalASAAAAAA==\",\"watchTime\":6481,\"authorId\":307259972,\"watchPercent\":0.5507775983683182},{\"videoId\":\"aIBOLgv1BQAKzBoAAAAAAA==\",\"watchTime\":9477,\"authorId\":1756170,\"watchPercent\":0.46606668633815285},{\"videoId\":\"D0Y3QPLfBQBEalASAAAAAA==\",\"watchTime\":12387,\"authorId\":307259972,\"watchPercent\":1.6516},{\"videoId\":\"MwfIAxoVBgBEalASAAAAAA==\",\"watchTime\":2855,\"authorId\":307259972,\"watchPercent\":0.19333649353287735},{\"videoId\":\"p4d22NPRBQAKzBoAAAAAAA==\",\"watchTime\":1762,\"authorId\":1756170,\"watchPercent\":0.07866071428571429},{\"videoId\":\"rMeFcereBQBEalASAAAAAA==\",\"watchTime\":2389,\"authorId\":307259972,\"watchPercent\":0.18825847123719464}],\"interactDataFromCard\":[],\"sessionCards\":0}","device_id":"640CA8FDF8724833B02C48D7F935E2FA","lang":"vi"}' \
--proxy http://localhost:9090
```

```
{
                  "format": 1600408,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004081715869119.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004081715869119.mp4",
                  "bitrate": 325880,
                  "width": 360,
                  "height": 640,
                  "duration": 50804
},
```

```
{
  "code": 0,
  "msg": "Success",
  "data": {
    "list": [
      {
        "post": {
          "meta": {
            "post_id": "HgYr08G9BQCEVj0qAAAAAA==",
            "user_id": 708662916,
            "user_name": "nhuhuynhcutee",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 118,
              "likes": 1,
              "comments": 0
            },
            "ctime": 1715868931310,
            "avatar": "vn-11134233-7r98o-lwy96ztibtuj56",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1715868978601
            },
            "human_like": true,
            "shopee_nick_name": "Như Huỳnh Store🛍️",
            "source": 0
          },
          "content": {
            "caption": "#suadac #ShopeeVideo #LuotVuiMuaLien",
            "mentions": [],
            "hashtags": [
              {
                "hashtag_id": "16293837636985163997",
                "hashtag_name": "",
                "start": 0,
                "length": 7,
                "is_official": false
              },
              {
                "hashtag_id": "11432692145916448940",
                "hashtag_name": "",
                "start": 8,
                "length": 12,
                "is_official": false
              },
              {
                "hashtag_id": "14424821104542133142",
                "hashtag_name": "",
                "start": 21,
                "length": 15,
                "is_official": false
              }
            ],
            "video": {
              "video_id": "vn-11110124-6ke17-lvdbidontaw4c2",
              "cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvdbu72754661b@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4",
              "size": 11875,
              "duration": 50833,
              "width": 576,
              "height": 1024,
              "watermark_cover_url": "vn-11134114-7r98o-lvdbu6a69rild6",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16003551715868932.2903.mp4",
              "formats": [
                {
                  "format": 1600408,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004081715869119.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004081715869119.mp4",
                  "bitrate": 325880,
                  "width": 360,
                  "height": 640,
                  "duration": 50804
                },
                {
                  "format": 1600409,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4",
                  "bitrate": 623253,
                  "width": 540,
                  "height": 960,
                  "duration": 50804
                },
                {
                  "format": 1600410,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004101715869119.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004101715869119.mp4",
                  "bitrate": 778253,
                  "width": 576,
                  "height": 1024,
                  "duration": 50804
                },
                {
                  "format": 1600411,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004111715869119.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004111715869119.mp4",
                  "bitrate": 1082154,
                  "width": 576,
                  "height": 1024,
                  "duration": 50804
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvdbu72754661b\",\"create_time\":1715868903,\"default_format\":{\"abitrate\":32104,\"bitrate\":461402,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":50799,\"format\":1600323,\"fps\":25.01969,\"height\":960,\"profile\":\"MP4\",\"size\":3173715,\"update_time\":1715868954,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.default.mp4\",\"width\":540},\"duration\":50833,\"extend_formats\":{\"H265\":[{\"abitrate\":32099,\"bitrate\":266793,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":50804,\"format\":1600412,\"fps\":25.01969,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004121715869119.mp4\",\"profile\":\"MP4\",\"size\":1945518,\"update_time\":1715869159,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004121715869119.mp4\",\"width\":360},{\"abitrate\":32099,\"bitrate\":473540,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":50804,\"format\":1600413,\"fps\":25.01969,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004131715869119.mp4\",\"profile\":\"MP4\",\"size\":3258347,\"update_time\":1715869183,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004131715869119.mp4\",\"width\":540},{\"abitrate\":32099,\"bitrate\":603844,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":50804,\"format\":1600414,\"fps\":25.01969,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004141715869119.mp4\",\"profile\":\"MP4\",\"size\":4085790,\"update_time\":1715869181,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004141715869119.mp4\",\"width\":576},{\"abitrate\":32099,\"bitrate\":631698,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":50804,\"format\":1600415,\"fps\":25.01969,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004151715869119.mp4\",\"profile\":\"MP4\",\"size\":4262667,\"update_time\":1715869182,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004151715869119.mp4\",\"width\":576}]},\"formats\":[{\"abitrate\":32099,\"bitrate\":325880,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":50804,\"format\":1600408,\"fps\":25.01969,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004081715869119.mp4\",\"profile\":\"MP4\",\"size\":2316995,\"update_time\":1715869135,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004081715869119.mp4\",\"width\":360},{\"abitrate\":32099,\"bitrate\":623253,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":50804,\"format\":1600409,\"fps\":25.01969,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4\",\"profile\":\"MP4\",\"size\":4205312,\"update_time\":1715869119,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4\",\"width\":540},{\"abitrate\":32099,\"bitrate\":778253,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":50804,\"format\":1600410,\"fps\":25.01969,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004101715869119.mp4\",\"profile\":\"MP4\",\"size\":5189567,\"update_time\":1715869143,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004101715869119.mp4\",\"width\":576},{\"abitrate\":32099,\"bitrate\":1082154,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":50804,\"format\":1600411,\"fps\":25.01969,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004111715869119.mp4\",\"profile\":\"MP4\",\"size\":7119335,\"update_time\":1715869145,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004111715869119.mp4\",\"width\":576}],\"serviceID\":2,\"update_time\":1715868935,\"vid\":\"vn-11110124-6ke17-lvdbidontaw4c2\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvdbu72754661b\",\"create_time\":1715868903,\"default_format\":{\"abitrate\":32104,\"bitrate\":461402,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":50799,\"format\":1600323,\"fps\":25.01969,\"height\":960,\"profile\":\"MP4\",\"size\":3173715,\"update_time\":1715868954,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.default.mp4\",\"width\":540},\"duration\":50833,\"extend_formats\":{\"H265\":[{\"abitrate\":32099,\"bitrate\":266793,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":50804,\"format\":1600412,\"fps\":25.01969,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004121715869119.mp4\",\"profile\":\"MP4\",\"size\":1945518,\"update_time\":1715869159,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004121715869119.mp4\",\"width\":360},{\"abitrate\":32099,\"bitrate\":473540,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":50804,\"format\":1600413,\"fps\":25.01969,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004131715869119.mp4\",\"profile\":\"MP4\",\"size\":3258347,\"update_time\":1715869183,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004131715869119.mp4\",\"width\":540},{\"abitrate\":32099,\"bitrate\":603844,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":50804,\"format\":1600414,\"fps\":25.01969,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004141715869119.mp4\",\"profile\":\"MP4\",\"size\":4085790,\"update_time\":1715869181,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004141715869119.mp4\",\"width\":576},{\"abitrate\":32099,\"bitrate\":631698,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":50804,\"format\":1600415,\"fps\":25.01969,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004151715869119.mp4\",\"profile\":\"MP4\",\"size\":4262667,\"update_time\":1715869182,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004151715869119.mp4\",\"width\":576}]},\"formats\":[{\"abitrate\":32099,\"bitrate\":325880,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":50804,\"format\":1600408,\"fps\":25.01969,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004081715869119.mp4\",\"profile\":\"MP4\",\"size\":2316995,\"update_time\":1715869135,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004081715869119.mp4\",\"width\":360},{\"abitrate\":32099,\"bitrate\":623253,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":50804,\"format\":1600409,\"fps\":25.01969,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4\",\"profile\":\"MP4\",\"size\":4205312,\"update_time\":1715869119,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4\",\"width\":540},{\"abitrate\":32099,\"bitrate\":778253,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":50804,\"format\":1600410,\"fps\":25.01969,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004101715869119.mp4\",\"profile\":\"MP4\",\"size\":5189567,\"update_time\":1715869143,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004101715869119.mp4\",\"width\":576},{\"abitrate\":32099,\"bitrate\":1082154,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":50804,\"format\":1600411,\"fps\":25.01969,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004111715869119.mp4\",\"profile\":\"MP4\",\"size\":7119335,\"update_time\":1715869145,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004111715869119.mp4\",\"width\":576}],\"serviceID\":2,\"update_time\":1715868935,\"vid\":\"vn-11110124-6ke17-lvdbidontaw4c2\"}",
              "preload_format": {
                "format": 1600409,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lvdbidontaw4c2.16004091715869097.mp4",
                "bitrate": 623253,
                "width": 540,
                "height": 960,
                "duration": 50804
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvdbu72754661b",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2878750370018886803",
              "author_name": "nhuhuynhcutee",
              "type": 0,
              "source": "",
              "title": "",
              "cover": "",
              "url": "https://play-src.vod.shopee.com/api/v4/11110124/mms/2878750370018886803.10005921715868935.aac",
              "duration": 50875,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 0
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "l4cdoK7PBQDJtwFLAAAAAA==",
            "user_id": 1258403785,
            "user_name": "thaovan.18",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 13,
              "likes": 0,
              "comments": 0
            },
            "ctime": 1717071857829,
            "avatar": "",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1717071890743
            },
            "human_like": true,
            "shopee_nick_name": "",
            "source": 0
          },
          "content": {
            "caption": "",
            "mentions": [],
            "hashtags": [],
            "video": {
              "video_id": "vn-11110124-6ke18-lvx6yre5dn1525",
              "cover": "https://down-vn.img.susercontent.com/sg-11110125-7rd4w-lvxnhedwou6z42@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4",
              "size": 6563,
              "duration": 9600,
              "width": 720,
              "height": 1280,
              "watermark_cover_url": "vn-11134114-7r98o-lvx77ze7dmmx0c",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003551717071863.2569.mp4",
              "formats": [
                {
                  "format": 1600322,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003221717080866.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003221717080866.mp4",
                  "bitrate": 119072,
                  "width": 360,
                  "height": 640,
                  "duration": 9621
                },
                {
                  "format": 1600323,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4",
                  "bitrate": 216542,
                  "width": 540,
                  "height": 960,
                  "duration": 9621
                },
                {
                  "format": 1600324,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003241717080866.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003241717080866.mp4",
                  "bitrate": 294485,
                  "width": 720,
                  "height": 1280,
                  "duration": 9621
                },
                {
                  "format": 1600325,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003251717071876.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003251717071876.mp4",
                  "bitrate": 373472,
                  "width": 720,
                  "height": 1280,
                  "duration": 9621
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvx7804kcsy954\",\"create_time\":1717071857,\"default_format\":{\"abitrate\":128738,\"bitrate\":216542,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":9621,\"format\":1600323,\"fps\":25.1046,\"height\":960,\"profile\":\"MP4\",\"size\":422254,\"update_time\":1717071863,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4\",\"width\":540},\"duration\":9600,\"extend_formats\":{\"H265\":[{\"abitrate\":96866,\"bitrate\":150529,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":9614,\"format\":1600315,\"fps\":25.1046,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003151717080866.mp4\",\"profile\":\"MP4\",\"size\":308437,\"update_time\":1717080873,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003151717080866.mp4\",\"width\":360},{\"abitrate\":128740,\"bitrate\":232010,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":9614,\"format\":1600316,\"fps\":25.1046,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003161717080866.mp4\",\"profile\":\"MP4\",\"size\":444108,\"update_time\":1717080874,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003161717080866.mp4\",\"width\":540},{\"abitrate\":128740,\"bitrate\":356140,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":9614,\"format\":1600317,\"fps\":25.1046,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003171717080866.mp4\",\"profile\":\"MP4\",\"size\":592446,\"update_time\":1717080877,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003171717080866.mp4\",\"width\":720},{\"abitrate\":128740,\"bitrate\":364827,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":9614,\"format\":1600318,\"fps\":25.1046,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003181717071876.mp4\",\"profile\":\"MP4\",\"size\":602828,\"update_time\":1717071888,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003181717071876.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96810,\"bitrate\":119072,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":9621,\"format\":1600322,\"fps\":25.1046,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003221717080866.mp4\",\"profile\":\"MP4\",\"size\":267424,\"update_time\":1717080872,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003221717080866.mp4\",\"width\":360},{\"abitrate\":128738,\"bitrate\":216542,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":9621,\"format\":1600323,\"fps\":25.1046,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4\",\"profile\":\"MP4\",\"size\":422254,\"update_time\":1717071863,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4\",\"width\":540},{\"abitrate\":128738,\"bitrate\":294485,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":9621,\"format\":1600324,\"fps\":25.1046,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003241717080866.mp4\",\"profile\":\"MP4\",\"size\":515416,\"update_time\":1717080873,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003241717080866.mp4\",\"width\":720},{\"abitrate\":128738,\"bitrate\":373472,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":9621,\"format\":1600325,\"fps\":25.1046,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003251717071876.mp4\",\"profile\":\"MP4\",\"size\":609806,\"update_time\":1717071884,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003251717071876.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1717071859,\"vid\":\"vn-11110124-6ke18-lvx6yre5dn1525\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvx7804kcsy954\",\"create_time\":1717071857,\"default_format\":{\"abitrate\":128738,\"bitrate\":216542,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":9621,\"format\":1600323,\"fps\":25.1046,\"height\":960,\"profile\":\"MP4\",\"size\":422254,\"update_time\":1717071863,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4\",\"width\":540},\"duration\":9600,\"extend_formats\":{\"H265\":[{\"abitrate\":96866,\"bitrate\":150529,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":9614,\"format\":1600315,\"fps\":25.1046,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003151717080866.mp4\",\"profile\":\"MP4\",\"size\":308437,\"update_time\":1717080873,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003151717080866.mp4\",\"width\":360},{\"abitrate\":128740,\"bitrate\":232010,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":9614,\"format\":1600316,\"fps\":25.1046,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003161717080866.mp4\",\"profile\":\"MP4\",\"size\":444108,\"update_time\":1717080874,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003161717080866.mp4\",\"width\":540},{\"abitrate\":128740,\"bitrate\":356140,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":9614,\"format\":1600317,\"fps\":25.1046,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003171717080866.mp4\",\"profile\":\"MP4\",\"size\":592446,\"update_time\":1717080877,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003171717080866.mp4\",\"width\":720},{\"abitrate\":128740,\"bitrate\":364827,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":9614,\"format\":1600318,\"fps\":25.1046,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003181717071876.mp4\",\"profile\":\"MP4\",\"size\":602828,\"update_time\":1717071888,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003181717071876.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96810,\"bitrate\":119072,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":9621,\"format\":1600322,\"fps\":25.1046,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003221717080866.mp4\",\"profile\":\"MP4\",\"size\":267424,\"update_time\":1717080872,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003221717080866.mp4\",\"width\":360},{\"abitrate\":128738,\"bitrate\":216542,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":9621,\"format\":1600323,\"fps\":25.1046,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4\",\"profile\":\"MP4\",\"size\":422254,\"update_time\":1717071863,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4\",\"width\":540},{\"abitrate\":128738,\"bitrate\":294485,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":9621,\"format\":1600324,\"fps\":25.1046,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003241717080866.mp4\",\"profile\":\"MP4\",\"size\":515416,\"update_time\":1717080873,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003241717080866.mp4\",\"width\":720},{\"abitrate\":128738,\"bitrate\":373472,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":9621,\"format\":1600325,\"fps\":25.1046,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003251717071876.mp4\",\"profile\":\"MP4\",\"size\":609806,\"update_time\":1717071884,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.16003251717071876.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1717071859,\"vid\":\"vn-11110124-6ke18-lvx6yre5dn1525\"}",
              "preload_format": {
                "format": 1600323,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvx6yre5dn1525.default.mp4",
                "bitrate": 216542,
                "width": 540,
                "height": 960,
                "duration": 9621
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvx7804kcsy954",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2880768545824703737",
              "author_name": "thaovan.18",
              "type": 0,
              "source": "",
              "title": "",
              "cover": "",
              "url": "https://play-src.vod.shopee.com/api/v4/11110124/mms/2880768545824703737.10005921717071859.aac",
              "duration": 9636,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 364
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "g4EFVD7XBQC9s4QFAAAAAA==",
            "user_id": 92582845,
            "user_name": "hangmoon280899",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 29,
              "likes": 0,
              "comments": 0
            },
            "ctime": 1717579290694,
            "avatar": "vn-11134233-7r98o-lu8v34ubw4cx4f",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1717579333989
            },
            "human_like": true,
            "shopee_nick_name": "MoonShop99",
            "source": 0
          },
          "content": {
            "caption": "",
            "mentions": [],
            "hashtags": [],
            "video": {
              "video_id": "vn-11110124-6ke17-lw5ky7pb8maj09",
              "cover": "https://down-vn.img.susercontent.com/sg-11110125-7rd52-lw5vygxhtecb56@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4",
              "size": 12071,
              "duration": 12052,
              "width": 720,
              "height": 1280,
              "watermark_cover_url": "vn-11134114-7r98o-lw5kzrizjpi1dc",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16003551717579296.4172.mp4",
              "formats": [
                {
                  "format": 1600408,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004081717581959.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004081717581959.mp4",
                  "bitrate": 107893,
                  "width": 360,
                  "height": 640,
                  "duration": 12052
                },
                {
                  "format": 1600409,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4",
                  "bitrate": 273123,
                  "width": 540,
                  "height": 960,
                  "duration": 12052
                },
                {
                  "format": 1600410,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004101717581959.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004101717581959.mp4",
                  "bitrate": 500600,
                  "width": 720,
                  "height": 1280,
                  "duration": 12052
                },
                {
                  "format": 1600411,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004111717581959.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004111717581959.mp4",
                  "bitrate": 571571,
                  "width": 720,
                  "height": 1280,
                  "duration": 12052
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lw5ky7pba0uz74\",\"create_time\":1717579289,\"default_format\":{\"abitrate\":128597,\"bitrate\":334723,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":12053,\"format\":1600323,\"fps\":25.08361,\"height\":960,\"profile\":\"MP4\",\"size\":704731,\"update_time\":1717579299,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.default.mp4\",\"width\":540},\"duration\":12052,\"extend_formats\":{\"H265\":[{\"abitrate\":96823,\"bitrate\":147807,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":12052,\"format\":1600412,\"fps\":25.08361,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004121717581959.mp4\",\"profile\":\"MP4\",\"size\":381054,\"update_time\":1717581964,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004121717581959.mp4\",\"width\":360},{\"abitrate\":128763,\"bitrate\":252349,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":12052,\"format\":1600413,\"fps\":25.08361,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004131717581959.mp4\",\"profile\":\"MP4\",\"size\":585476,\"update_time\":1717581967,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004131717581959.mp4\",\"width\":540},{\"abitrate\":128763,\"bitrate\":456507,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":12052,\"format\":1600414,\"fps\":25.08361,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004141717581959.mp4\",\"profile\":\"MP4\",\"size\":890695,\"update_time\":1717581970,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004141717581959.mp4\",\"width\":720},{\"abitrate\":128763,\"bitrate\":629967,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":12052,\"format\":1600415,\"fps\":25.08361,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004151717581959.mp4\",\"profile\":\"MP4\",\"size\":1150019,\"update_time\":1717581971,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004151717581959.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96823,\"bitrate\":107893,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":12052,\"format\":1600408,\"fps\":25.08361,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004081717581959.mp4\",\"profile\":\"MP4\",\"size\":318616,\"update_time\":1717581964,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004081717581959.mp4\",\"width\":360},{\"abitrate\":128763,\"bitrate\":273123,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":12052,\"format\":1600409,\"fps\":25.08361,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4\",\"profile\":\"MP4\",\"size\":613750,\"update_time\":1717581958,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4\",\"width\":540},{\"abitrate\":128763,\"bitrate\":500600,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":12052,\"format\":1600410,\"fps\":25.08361,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004101717581959.mp4\",\"profile\":\"MP4\",\"size\":953827,\"update_time\":1717581964,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004101717581959.mp4\",\"width\":720},{\"abitrate\":128763,\"bitrate\":571571,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":12052,\"format\":1600411,\"fps\":25.08361,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004111717581959.mp4\",\"profile\":\"MP4\",\"size\":1059930,\"update_time\":1717581964,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004111717581959.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1717579291,\"vid\":\"vn-11110124-6ke17-lw5ky7pb8maj09\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lw5ky7pba0uz74\",\"create_time\":1717579289,\"default_format\":{\"abitrate\":128597,\"bitrate\":334723,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":12053,\"format\":1600323,\"fps\":25.08361,\"height\":960,\"profile\":\"MP4\",\"size\":704731,\"update_time\":1717579299,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.default.mp4\",\"width\":540},\"duration\":12052,\"extend_formats\":{\"H265\":[{\"abitrate\":96823,\"bitrate\":147807,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":12052,\"format\":1600412,\"fps\":25.08361,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004121717581959.mp4\",\"profile\":\"MP4\",\"size\":381054,\"update_time\":1717581964,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004121717581959.mp4\",\"width\":360},{\"abitrate\":128763,\"bitrate\":252349,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":12052,\"format\":1600413,\"fps\":25.08361,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004131717581959.mp4\",\"profile\":\"MP4\",\"size\":585476,\"update_time\":1717581967,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004131717581959.mp4\",\"width\":540},{\"abitrate\":128763,\"bitrate\":456507,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":12052,\"format\":1600414,\"fps\":25.08361,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004141717581959.mp4\",\"profile\":\"MP4\",\"size\":890695,\"update_time\":1717581970,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004141717581959.mp4\",\"width\":720},{\"abitrate\":128763,\"bitrate\":629967,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":12052,\"format\":1600415,\"fps\":25.08361,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004151717581959.mp4\",\"profile\":\"MP4\",\"size\":1150019,\"update_time\":1717581971,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004151717581959.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96823,\"bitrate\":107893,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":12052,\"format\":1600408,\"fps\":25.08361,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004081717581959.mp4\",\"profile\":\"MP4\",\"size\":318616,\"update_time\":1717581964,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004081717581959.mp4\",\"width\":360},{\"abitrate\":128763,\"bitrate\":273123,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":12052,\"format\":1600409,\"fps\":25.08361,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4\",\"profile\":\"MP4\",\"size\":613750,\"update_time\":1717581958,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4\",\"width\":540},{\"abitrate\":128763,\"bitrate\":500600,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":12052,\"format\":1600410,\"fps\":25.08361,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004101717581959.mp4\",\"profile\":\"MP4\",\"size\":953827,\"update_time\":1717581964,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004101717581959.mp4\",\"width\":720},{\"abitrate\":128763,\"bitrate\":571571,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":12052,\"format\":1600411,\"fps\":25.08361,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004111717581959.mp4\",\"profile\":\"MP4\",\"size\":1059930,\"update_time\":1717581964,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004111717581959.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1717579291,\"vid\":\"vn-11110124-6ke17-lw5ky7pb8maj09\"}",
              "preload_format": {
                "format": 1600409,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lw5ky7pb8maj09.16004091717581953.mp4",
                "bitrate": 273123,
                "width": 540,
                "height": 960,
                "duration": 12052
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lw5ky7pba0uz74",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2829014475389010961",
              "author_name": "WinnieTheMoog",
              "type": 0,
              "source": "",
              "title": "Pop Rock",
              "cover": "",
              "url": "https://down-aka-vn.vod.susercontent.com/api/v4/11110125/mms/2829014475389010961.10000021686224036.aac",
              "duration": 192028,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "edit": [
                {}
              ],
              "effect_ids": [
                35,
                38,
                45,
                19
              ],
              "template_id": 0
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "0UVYe1jOBAAi2scGAAAAAA==",
            "user_id": 113760802,
            "user_name": "dinhvantruong10a4",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 31,
              "likes": 0,
              "comments": 0
            },
            "ctime": 1699802297772,
            "avatar": "vn-11134233-7r98o-ltjoo9irfcp660",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1699802329429
            },
            "human_like": true,
            "shopee_nick_name": "dinhvantruong10a4",
            "source": 0
          },
          "content": {
            "caption": "",
            "mentions": [],
            "hashtags": [],
            "video": {
              "video_id": "vn-11110124-6ke17-lnzwypmhzce236",
              "cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lnzwyvyaqbrxb2@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4",
              "size": 220,
              "duration": 3000,
              "width": 720,
              "height": 1280,
              "watermark_cover_url": "vn-11134114-7r98o-lnzwyuvqafhp96",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16003551705570203.2415.mp4",
              "formats": [
                {
                  "format": 1600408,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004081699889089.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004081699889089.mp4",
                  "bitrate": 67870,
                  "width": 360,
                  "height": 640,
                  "duration": 3019
                },
                {
                  "format": 1600409,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4",
                  "bitrate": 134013,
                  "width": 540,
                  "height": 960,
                  "duration": 3019
                },
                {
                  "format": 1600410,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004101699889090.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004101699889090.mp4",
                  "bitrate": 242778,
                  "width": 720,
                  "height": 1280,
                  "duration": 3019
                },
                {
                  "format": 1600411,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004111699889090.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004111699889090.mp4",
                  "bitrate": 245918,
                  "width": 720,
                  "height": 1280,
                  "duration": 3019
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lnzwyvyaqbrxb2\",\"create_time\":1699802296,\"default_format\":{\"abitrate\":13595,\"bitrate\":166605,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":3029,\"format\":1600323,\"fps\":25.33784,\"height\":960,\"profile\":\"MP4\",\"size\":69925,\"update_time\":1699802300,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.default.mp4\",\"width\":540},\"duration\":3000,\"extend_formats\":{\"H265\":[{\"abitrate\":12495,\"bitrate\":70445,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":3019,\"format\":1600412,\"fps\":25.33784,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004121699889090.mp4\",\"profile\":\"MP4\",\"size\":37257,\"update_time\":1699889091,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004121699889090.mp4\",\"width\":360},{\"abitrate\":12495,\"bitrate\":122697,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":3019,\"format\":1600413,\"fps\":25.33784,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004131699889090.mp4\",\"profile\":\"MP4\",\"size\":56591,\"update_time\":1699889092,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004131699889090.mp4\",\"width\":540},{\"abitrate\":12495,\"bitrate\":235783,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":3019,\"format\":1600414,\"fps\":25.33784,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004141699889090.mp4\",\"profile\":\"MP4\",\"size\":98435,\"update_time\":1699889092,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004141699889090.mp4\",\"width\":720},{\"abitrate\":12495,\"bitrate\":255170,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":3019,\"format\":1600415,\"fps\":25.33784,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004151699889090.mp4\",\"profile\":\"MP4\",\"size\":105609,\"update_time\":1699889092,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004151699889090.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":12495,\"bitrate\":67870,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":3019,\"format\":1600408,\"fps\":25.33784,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004081699889089.mp4\",\"profile\":\"MP4\",\"size\":33748,\"update_time\":1699889089,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004081699889089.mp4\",\"width\":360},{\"abitrate\":12495,\"bitrate\":134013,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":3019,\"format\":1600409,\"fps\":25.33784,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4\",\"profile\":\"MP4\",\"size\":58221,\"update_time\":1699889091,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4\",\"width\":540},{\"abitrate\":12495,\"bitrate\":242778,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":3019,\"format\":1600410,\"fps\":25.33784,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004101699889090.mp4\",\"profile\":\"MP4\",\"size\":98464,\"update_time\":1699889091,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004101699889090.mp4\",\"width\":720},{\"abitrate\":12495,\"bitrate\":245918,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":3019,\"format\":1600411,\"fps\":25.33784,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004111699889090.mp4\",\"profile\":\"MP4\",\"size\":99626,\"update_time\":1699889091,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004111699889090.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1699802298,\"vid\":\"vn-11110124-6ke17-lnzwypmhzce236\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lnzwyvyaqbrxb2\",\"create_time\":1699802296,\"default_format\":{\"abitrate\":13595,\"bitrate\":166605,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":3029,\"format\":1600323,\"fps\":25.33784,\"height\":960,\"profile\":\"MP4\",\"size\":69925,\"update_time\":1699802300,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.default.mp4\",\"width\":540},\"duration\":3000,\"extend_formats\":{\"H265\":[{\"abitrate\":12495,\"bitrate\":70445,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":3019,\"format\":1600412,\"fps\":25.33784,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004121699889090.mp4\",\"profile\":\"MP4\",\"size\":37257,\"update_time\":1699889091,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004121699889090.mp4\",\"width\":360},{\"abitrate\":12495,\"bitrate\":122697,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":3019,\"format\":1600413,\"fps\":25.33784,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004131699889090.mp4\",\"profile\":\"MP4\",\"size\":56591,\"update_time\":1699889092,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004131699889090.mp4\",\"width\":540},{\"abitrate\":12495,\"bitrate\":235783,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":3019,\"format\":1600414,\"fps\":25.33784,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004141699889090.mp4\",\"profile\":\"MP4\",\"size\":98435,\"update_time\":1699889092,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004141699889090.mp4\",\"width\":720},{\"abitrate\":12495,\"bitrate\":255170,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":3019,\"format\":1600415,\"fps\":25.33784,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004151699889090.mp4\",\"profile\":\"MP4\",\"size\":105609,\"update_time\":1699889092,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004151699889090.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":12495,\"bitrate\":67870,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":3019,\"format\":1600408,\"fps\":25.33784,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004081699889089.mp4\",\"profile\":\"MP4\",\"size\":33748,\"update_time\":1699889089,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004081699889089.mp4\",\"width\":360},{\"abitrate\":12495,\"bitrate\":134013,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":3019,\"format\":1600409,\"fps\":25.33784,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4\",\"profile\":\"MP4\",\"size\":58221,\"update_time\":1699889091,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4\",\"width\":540},{\"abitrate\":12495,\"bitrate\":242778,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":3019,\"format\":1600410,\"fps\":25.33784,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004101699889090.mp4\",\"profile\":\"MP4\",\"size\":98464,\"update_time\":1699889091,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004101699889090.mp4\",\"width\":720},{\"abitrate\":12495,\"bitrate\":245918,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":3019,\"format\":1600411,\"fps\":25.33784,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004111699889090.mp4\",\"profile\":\"MP4\",\"size\":99626,\"update_time\":1699889091,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004111699889090.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1699802298,\"vid\":\"vn-11110124-6ke17-lnzwypmhzce236\"}",
              "preload_format": {
                "format": 1600409,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lnzwypmhzce236.16004091699889090.mp4",
                "bitrate": 134013,
                "width": 540,
                "height": 960,
                "duration": 3019
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lnzwyvyaqbrxb2",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2851795018971088086",
              "author_name": "dinhvantruong10a4",
              "type": 0,
              "source": "",
              "title": "",
              "cover": "",
              "url": "https://vod.sp-cdn.shopee.com/c3/98934353/124/A3oyOewZAPDMchAvEecDACc.aac",
              "duration": 3065,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "camera": {},
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 0
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "H4engcK9BQDnTNEKAAAAAA==",
            "user_id": 181488871,
            "user_name": "cameraxuansang2402",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 18,
              "likes": 0,
              "comments": 0
            },
            "ctime": 1715869109972,
            "avatar": "vn-11134233-7r98o-lxt53aklvrh7fa",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1715869141573
            },
            "human_like": true,
            "shopee_nick_name": "Sang Camera",
            "source": 0
          },
          "content": {
            "caption": "",
            "mentions": [],
            "hashtags": [],
            "video": {
              "video_id": "vn-11110124-6ke18-lvdbhjbhm8v8bc",
              "cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvdby0ovrxazad@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4",
              "size": 5330,
              "duration": 14966,
              "width": 720,
              "height": 1280,
              "watermark_cover_url": "vn-11134114-7r98o-lvdbxzy8t5yc08",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16003551715869110.7320.mp4",
              "formats": [
                {
                  "format": 1600408,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004081715869271.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004081715869271.mp4",
                  "bitrate": 104371,
                  "width": 360,
                  "height": 640,
                  "duration": 14977
                },
                {
                  "format": 1600409,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4",
                  "bitrate": 178586,
                  "width": 540,
                  "height": 960,
                  "duration": 14977
                },
                {
                  "format": 1600410,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004101715869271.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004101715869271.mp4",
                  "bitrate": 296010,
                  "width": 720,
                  "height": 1280,
                  "duration": 14977
                },
                {
                  "format": 1600411,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004111715869271.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004111715869271.mp4",
                  "bitrate": 343195,
                  "width": 720,
                  "height": 1280,
                  "duration": 14977
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvdby0ovrxazad\",\"create_time\":1715869109,\"default_format\":{\"abitrate\":125446,\"bitrate\":194543,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":14975,\"format\":1600323,\"fps\":25.06702,\"height\":960,\"profile\":\"MP4\",\"size\":610432,\"update_time\":1715869119,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.default.mp4\",\"width\":540},\"duration\":14966,\"extend_formats\":{\"H265\":[{\"abitrate\":96466,\"bitrate\":99012,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":14977,\"format\":1600412,\"fps\":25.06702,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004121715869271.mp4\",\"profile\":\"MP4\",\"size\":382037,\"update_time\":1715869277,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004121715869271.mp4\",\"width\":360},{\"abitrate\":125457,\"bitrate\":160815,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":14977,\"format\":1600413,\"fps\":25.06702,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004131715869271.mp4\",\"profile\":\"MP4\",\"size\":551570,\"update_time\":1715869279,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004131715869271.mp4\",\"width\":540},{\"abitrate\":125457,\"bitrate\":266513,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":14977,\"format\":1600414,\"fps\":25.06702,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004141715869271.mp4\",\"profile\":\"MP4\",\"size\":748702,\"update_time\":1715869281,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004141715869271.mp4\",\"width\":720},{\"abitrate\":125457,\"bitrate\":280237,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":14977,\"format\":1600415,\"fps\":25.06702,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004151715869271.mp4\",\"profile\":\"MP4\",\"size\":774299,\"update_time\":1715869281,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004151715869271.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96466,\"bitrate\":104371,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":14977,\"format\":1600408,\"fps\":25.06702,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004081715869271.mp4\",\"profile\":\"MP4\",\"size\":389150,\"update_time\":1715869275,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004081715869271.mp4\",\"width\":360},{\"abitrate\":125457,\"bitrate\":178586,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":14977,\"format\":1600409,\"fps\":25.06702,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4\",\"profile\":\"MP4\",\"size\":581835,\"update_time\":1715869271,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4\",\"width\":540},{\"abitrate\":125457,\"bitrate\":296010,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":14977,\"format\":1600410,\"fps\":25.06702,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004101715869271.mp4\",\"profile\":\"MP4\",\"size\":800830,\"update_time\":1715869278,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004101715869271.mp4\",\"width\":720},{\"abitrate\":125457,\"bitrate\":343195,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":14977,\"format\":1600411,\"fps\":25.06702,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004111715869271.mp4\",\"profile\":\"MP4\",\"size\":888830,\"update_time\":1715869278,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004111715869271.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1715869111,\"vid\":\"vn-11110124-6ke18-lvdbhjbhm8v8bc\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvdby0ovrxazad\",\"create_time\":1715869109,\"default_format\":{\"abitrate\":125446,\"bitrate\":194543,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":14975,\"format\":1600323,\"fps\":25.06702,\"height\":960,\"profile\":\"MP4\",\"size\":610432,\"update_time\":1715869119,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.default.mp4\",\"width\":540},\"duration\":14966,\"extend_formats\":{\"H265\":[{\"abitrate\":96466,\"bitrate\":99012,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":14977,\"format\":1600412,\"fps\":25.06702,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004121715869271.mp4\",\"profile\":\"MP4\",\"size\":382037,\"update_time\":1715869277,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004121715869271.mp4\",\"width\":360},{\"abitrate\":125457,\"bitrate\":160815,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":14977,\"format\":1600413,\"fps\":25.06702,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004131715869271.mp4\",\"profile\":\"MP4\",\"size\":551570,\"update_time\":1715869279,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004131715869271.mp4\",\"width\":540},{\"abitrate\":125457,\"bitrate\":266513,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":14977,\"format\":1600414,\"fps\":25.06702,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004141715869271.mp4\",\"profile\":\"MP4\",\"size\":748702,\"update_time\":1715869281,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004141715869271.mp4\",\"width\":720},{\"abitrate\":125457,\"bitrate\":280237,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":14977,\"format\":1600415,\"fps\":25.06702,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004151715869271.mp4\",\"profile\":\"MP4\",\"size\":774299,\"update_time\":1715869281,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004151715869271.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96466,\"bitrate\":104371,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":14977,\"format\":1600408,\"fps\":25.06702,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004081715869271.mp4\",\"profile\":\"MP4\",\"size\":389150,\"update_time\":1715869275,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004081715869271.mp4\",\"width\":360},{\"abitrate\":125457,\"bitrate\":178586,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":14977,\"format\":1600409,\"fps\":25.06702,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4\",\"profile\":\"MP4\",\"size\":581835,\"update_time\":1715869271,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4\",\"width\":540},{\"abitrate\":125457,\"bitrate\":296010,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":14977,\"format\":1600410,\"fps\":25.06702,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004101715869271.mp4\",\"profile\":\"MP4\",\"size\":800830,\"update_time\":1715869278,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004101715869271.mp4\",\"width\":720},{\"abitrate\":125457,\"bitrate\":343195,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":14977,\"format\":1600411,\"fps\":25.06702,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004111715869271.mp4\",\"profile\":\"MP4\",\"size\":888830,\"update_time\":1715869278,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004111715869271.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1715869111,\"vid\":\"vn-11110124-6ke18-lvdbhjbhm8v8bc\"}",
              "preload_format": {
                "format": 1600409,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lvdbhjbhm8v8bc.16004091715869266.mp4",
                "bitrate": 178586,
                "width": 540,
                "height": 960,
                "duration": 14977
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lvdby0ovrxazad",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2878750669844513835",
              "author_name": "cameraxuansang2402",
              "type": 0,
              "source": "",
              "title": "",
              "cover": "",
              "url": "https://play-src.vod.shopee.com/api/v4/11110124/mms/2878750669844513835.10005921715869111.aac",
              "duration": 15000,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 392
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "LYSNHX1eBQC7dHlEAAAAAA==",
            "user_id": 1148810427,
            "user_name": "chauanhnguyenngoc252",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 23,
              "likes": 0,
              "comments": 0
            },
            "ctime": 1709475577453,
            "avatar": "vn-11134233-7r98o-ltq4pzg7qknhd8",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1709475629946
            },
            "human_like": true,
            "shopee_nick_name": "",
            "source": 0
          },
          "content": {
            "caption": "#Review8thang3",
            "mentions": [],
            "hashtags": [
              {
                "hashtag_id": "1717075286215003255",
                "hashtag_name": "",
                "start": 0,
                "length": 14,
                "is_official": false
              }
            ],
            "video": {
              "video_id": "vn-11110124-6ke18-lsfpou3p0og446",
              "cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lsfpp06w49gm14@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4",
              "size": 748,
              "duration": 6000,
              "width": 720,
              "height": 1280,
              "watermark_cover_url": "vn-11134114-7r98o-lsfpoyu23dfo4f",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16003551709475578.9772.mp4",
              "formats": [
                {
                  "format": 1600408,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004081709475590.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004081709475590.mp4",
                  "bitrate": 50566,
                  "width": 360,
                  "height": 640,
                  "duration": 6013
                },
                {
                  "format": 1600409,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4",
                  "bitrate": 95940,
                  "width": 540,
                  "height": 960,
                  "duration": 6013
                },
                {
                  "format": 1600410,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004101709475593.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004101709475593.mp4",
                  "bitrate": 166248,
                  "width": 720,
                  "height": 1280,
                  "duration": 6013
                },
                {
                  "format": 1600411,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004111709475592.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004111709475592.mp4",
                  "bitrate": 165983,
                  "width": 720,
                  "height": 1280,
                  "duration": 6013
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lsfpp06w49gm14\",\"create_time\":1709475572,\"default_format\":{\"abitrate\":129019,\"bitrate\":118312,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":6015,\"format\":1600323,\"fps\":25.16779,\"height\":960,\"profile\":\"MP4\",\"size\":191155,\"update_time\":1709475582,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.default.mp4\",\"width\":540},\"duration\":6000,\"extend_formats\":{\"H265\":[{\"abitrate\":97258,\"bitrate\":57581,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":6013,\"format\":1600412,\"fps\":25.16779,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004121709475593.mp4\",\"profile\":\"MP4\",\"size\":125068,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004121709475593.mp4\",\"width\":360},{\"abitrate\":129063,\"bitrate\":99544,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":6013,\"format\":1600413,\"fps\":25.16779,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004131709475593.mp4\",\"profile\":\"MP4\",\"size\":180241,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004131709475593.mp4\",\"width\":540},{\"abitrate\":129063,\"bitrate\":175052,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":6013,\"format\":1600414,\"fps\":25.16779,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004141709475593.mp4\",\"profile\":\"MP4\",\"size\":236496,\"update_time\":1709475596,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004141709475593.mp4\",\"width\":720},{\"abitrate\":129063,\"bitrate\":175052,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":6013,\"format\":1600415,\"fps\":25.16779,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004151709475593.mp4\",\"profile\":\"MP4\",\"size\":236496,\"update_time\":1709475596,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004151709475593.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":97258,\"bitrate\":50566,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":6013,\"format\":1600408,\"fps\":25.16779,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004081709475590.mp4\",\"profile\":\"MP4\",\"size\":117211,\"update_time\":1709475592,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004081709475590.mp4\",\"width\":360},{\"abitrate\":129063,\"bitrate\":95940,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":6013,\"format\":1600409,\"fps\":25.16779,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4\",\"profile\":\"MP4\",\"size\":174924,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4\",\"width\":540},{\"abitrate\":129063,\"bitrate\":166248,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":6013,\"format\":1600410,\"fps\":25.16779,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004101709475593.mp4\",\"profile\":\"MP4\",\"size\":227303,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004101709475593.mp4\",\"width\":720},{\"abitrate\":129063,\"bitrate\":165983,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":6013,\"format\":1600411,\"fps\":25.16779,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004111709475592.mp4\",\"profile\":\"MP4\",\"size\":227106,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004111709475592.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1709475579,\"vid\":\"vn-11110124-6ke18-lsfpou3p0og446\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lsfpp06w49gm14\",\"create_time\":1709475572,\"default_format\":{\"abitrate\":129019,\"bitrate\":118312,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":6015,\"format\":1600323,\"fps\":25.16779,\"height\":960,\"profile\":\"MP4\",\"size\":191155,\"update_time\":1709475582,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.default.mp4\",\"width\":540},\"duration\":6000,\"extend_formats\":{\"H265\":[{\"abitrate\":97258,\"bitrate\":57581,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":6013,\"format\":1600412,\"fps\":25.16779,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004121709475593.mp4\",\"profile\":\"MP4\",\"size\":125068,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004121709475593.mp4\",\"width\":360},{\"abitrate\":129063,\"bitrate\":99544,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":6013,\"format\":1600413,\"fps\":25.16779,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004131709475593.mp4\",\"profile\":\"MP4\",\"size\":180241,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004131709475593.mp4\",\"width\":540},{\"abitrate\":129063,\"bitrate\":175052,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":6013,\"format\":1600414,\"fps\":25.16779,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004141709475593.mp4\",\"profile\":\"MP4\",\"size\":236496,\"update_time\":1709475596,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004141709475593.mp4\",\"width\":720},{\"abitrate\":129063,\"bitrate\":175052,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":6013,\"format\":1600415,\"fps\":25.16779,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004151709475593.mp4\",\"profile\":\"MP4\",\"size\":236496,\"update_time\":1709475596,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004151709475593.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":97258,\"bitrate\":50566,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":6013,\"format\":1600408,\"fps\":25.16779,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004081709475590.mp4\",\"profile\":\"MP4\",\"size\":117211,\"update_time\":1709475592,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004081709475590.mp4\",\"width\":360},{\"abitrate\":129063,\"bitrate\":95940,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":6013,\"format\":1600409,\"fps\":25.16779,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4\",\"profile\":\"MP4\",\"size\":174924,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4\",\"width\":540},{\"abitrate\":129063,\"bitrate\":166248,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":6013,\"format\":1600410,\"fps\":25.16779,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004101709475593.mp4\",\"profile\":\"MP4\",\"size\":227303,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004101709475593.mp4\",\"width\":720},{\"abitrate\":129063,\"bitrate\":165983,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":6013,\"format\":1600411,\"fps\":25.16779,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004111709475592.mp4\",\"profile\":\"MP4\",\"size\":227106,\"update_time\":1709475595,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004111709475592.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1709475579,\"vid\":\"vn-11110124-6ke18-lsfpou3p0og446\"}",
              "preload_format": {
                "format": 1600409,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke18-lsfpou3p0og446.16004091709475593.mp4",
                "bitrate": 95940,
                "width": 540,
                "height": 960,
                "duration": 6013
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lsfpp06w49gm14",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2829014475456119825",
              "author_name": "TimTaj",
              "type": 0,
              "source": "",
              "title": "Sự kiện thời trang",
              "cover": "",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110125/mms/2829014475456119825.10000021686224036.aac",
              "duration": 151255,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "camera": {},
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 0
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "SobxK4jtBQAdgX5HAAAAAA==",
            "user_id": 1199472925,
            "user_name": "nataliaphuoc",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 120,
              "likes": 1,
              "comments": 0
            },
            "ctime": 1719075043320,
            "avatar": "",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1719075075435
            },
            "human_like": true,
            "shopee_nick_name": "Natalia",
            "source": 0
          },
          "content": {
            "caption": "#HangMoiVe  Kem đặc Dutch Lady",
            "mentions": [],
            "hashtags": [
              {
                "hashtag_id": "15423165041123344691",
                "hashtag_name": "",
                "start": 0,
                "length": 10,
                "is_official": false
              }
            ],
            "video": {
              "video_id": "vn-11110124-6ke16-lwu99pgv4ul50d",
              "cover": "https://down-vn.img.susercontent.com/sg-11110125-7rd6u-lwuaj3qpi6t034@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4",
              "size": 4660,
              "duration": 11266,
              "width": 720,
              "height": 1280,
              "watermark_cover_url": "vn-11134114-7r98o-lwuairwst3h5ee",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003551719075057.6438.mp4",
              "formats": [
                {
                  "format": 1600322,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003221719075060.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003221719075060.mp4",
                  "bitrate": 96380,
                  "width": 360,
                  "height": 640,
                  "duration": 11243
                },
                {
                  "format": 1600323,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4",
                  "bitrate": 162593,
                  "width": 540,
                  "height": 960,
                  "duration": 11243
                },
                {
                  "format": 1600325,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003251719075060.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003251719075060.mp4",
                  "bitrate": 290332,
                  "width": 720,
                  "height": 1280,
                  "duration": 11243
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lwu99pgv695l91\",\"create_time\":1719075023,\"default_format\":{\"abitrate\":128571,\"bitrate\":162593,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":11243,\"format\":1600323,\"fps\":25.08897,\"height\":960,\"profile\":\"MP4\",\"size\":419148,\"update_time\":1719075047,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4\",\"width\":540},\"duration\":11266,\"extend_formats\":{\"H265\":[{\"abitrate\":96636,\"bitrate\":91846,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":11239,\"format\":1600315,\"fps\":25.08897,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003151719075060.mp4\",\"profile\":\"MP4\",\"size\":278419,\"update_time\":1719075063,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003151719075060.mp4\",\"width\":360},{\"abitrate\":128579,\"bitrate\":139466,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":11239,\"format\":1600316,\"fps\":25.08897,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003161719075060.mp4\",\"profile\":\"MP4\",\"size\":390199,\"update_time\":1719075064,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003161719075060.mp4\",\"width\":540},{\"abitrate\":128579,\"bitrate\":246172,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":11239,\"format\":1600318,\"fps\":25.08897,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003181719075060.mp4\",\"profile\":\"MP4\",\"size\":540121,\"update_time\":1719075066,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003181719075060.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96653,\"bitrate\":96380,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":11243,\"format\":1600322,\"fps\":25.08897,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003221719075060.mp4\",\"profile\":\"MP4\",\"size\":281263,\"update_time\":1719075062,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003221719075060.mp4\",\"width\":360},{\"abitrate\":128571,\"bitrate\":162593,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":11243,\"format\":1600323,\"fps\":25.08897,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4\",\"profile\":\"MP4\",\"size\":419148,\"update_time\":1719075047,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4\",\"width\":540},{\"abitrate\":128571,\"bitrate\":290332,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":11243,\"format\":1600325,\"fps\":25.08897,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003251719075060.mp4\",\"profile\":\"MP4\",\"size\":598620,\"update_time\":1719075064,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003251719075060.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1719075044,\"vid\":\"vn-11110124-6ke16-lwu99pgv4ul50d\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lwu99pgv695l91\",\"create_time\":1719075023,\"default_format\":{\"abitrate\":128571,\"bitrate\":162593,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":11243,\"format\":1600323,\"fps\":25.08897,\"height\":960,\"profile\":\"MP4\",\"size\":419148,\"update_time\":1719075047,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4\",\"width\":540},\"duration\":11266,\"extend_formats\":{\"H265\":[{\"abitrate\":96636,\"bitrate\":91846,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":11239,\"format\":1600315,\"fps\":25.08897,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003151719075060.mp4\",\"profile\":\"MP4\",\"size\":278419,\"update_time\":1719075063,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003151719075060.mp4\",\"width\":360},{\"abitrate\":128579,\"bitrate\":139466,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":11239,\"format\":1600316,\"fps\":25.08897,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003161719075060.mp4\",\"profile\":\"MP4\",\"size\":390199,\"update_time\":1719075064,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003161719075060.mp4\",\"width\":540},{\"abitrate\":128579,\"bitrate\":246172,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":11239,\"format\":1600318,\"fps\":25.08897,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003181719075060.mp4\",\"profile\":\"MP4\",\"size\":540121,\"update_time\":1719075066,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003181719075060.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96653,\"bitrate\":96380,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":11243,\"format\":1600322,\"fps\":25.08897,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003221719075060.mp4\",\"profile\":\"MP4\",\"size\":281263,\"update_time\":1719075062,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003221719075060.mp4\",\"width\":360},{\"abitrate\":128571,\"bitrate\":162593,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":11243,\"format\":1600323,\"fps\":25.08897,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4\",\"profile\":\"MP4\",\"size\":419148,\"update_time\":1719075047,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4\",\"width\":540},{\"abitrate\":128571,\"bitrate\":290332,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":11243,\"format\":1600325,\"fps\":25.08897,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003251719075060.mp4\",\"profile\":\"MP4\",\"size\":598620,\"update_time\":1719075064,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.16003251719075060.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1719075044,\"vid\":\"vn-11110124-6ke16-lwu99pgv4ul50d\"}",
              "preload_format": {
                "format": 1600323,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lwu99pgv4ul50d.default.mp4",
                "bitrate": 162593,
                "width": 540,
                "height": 960,
                "duration": 11243
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lwu99pgv695l91",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2884129333708850418",
              "author_name": "nataliaphuoc",
              "type": 0,
              "source": "",
              "title": "",
              "cover": "",
              "url": "https://play-src.vod.shopee.com/api/v4/11110124/mms/2884129333708850418.10005921719075044.aac",
              "duration": 11308,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 445
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "hYfVsGXdBQB70XccAAAAAA==",
            "user_id": 477614459,
            "user_name": "vysamsung",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 652,
              "likes": 0,
              "comments": 0
            },
            "ctime": 1717992262580,
            "avatar": "vn-11134233-7r98o-lpjrp3zfqaetb5",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1718275104988
            },
            "human_like": true,
            "shopee_nick_name": "Dy Nè",
            "source": 0
          },
          "content": {
            "caption": "#Sữađặc #CôgáiHàLan #Sữa #DutchLady #ShopeeMall",
            "mentions": [],
            "hashtags": [
              {
                "hashtag_id": "3718428347137512680",
                "hashtag_name": "",
                "start": 0,
                "length": 7,
                "is_official": false
              },
              {
                "hashtag_id": "3658551763814046199",
                "hashtag_name": "",
                "start": 8,
                "length": 11,
                "is_official": false
              },
              {
                "hashtag_id": "4654720378975820854",
                "hashtag_name": "",
                "start": 20,
                "length": 4,
                "is_official": false
              },
              {
                "hashtag_id": "9219684137764203437",
                "hashtag_name": "",
                "start": 25,
                "length": 10,
                "is_official": false
              },
              {
                "hashtag_id": "2430332043089407371",
                "hashtag_name": "",
                "start": 36,
                "length": 11,
                "is_official": false
              }
            ],
            "video": {
              "video_id": "vn-11110124-6ke14-lwcegtqwogrd66",
              "cover": "https://down-vn.img.susercontent.com/sg-11110125-7rd3l-lwcelhyai2u9b1@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4",
              "size": 11482,
              "duration": 11331,
              "width": 576,
              "height": 1024,
              "watermark_cover_url": "vn-11134114-7r98o-lwcel75kbzrvd5",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16003551717992273.8552.mp4",
              "formats": [
                {
                  "format": 1600408,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004081717995866.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004081717995866.mp4",
                  "bitrate": 463238,
                  "width": 360,
                  "height": 640,
                  "duration": 11331
                },
                {
                  "format": 1600409,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4",
                  "bitrate": 822987,
                  "width": 540,
                  "height": 960,
                  "duration": 11331
                },
                {
                  "format": 1600410,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004101717995866.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004101717995866.mp4",
                  "bitrate": 971050,
                  "width": 576,
                  "height": 1024,
                  "duration": 11331
                },
                {
                  "format": 1600411,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004111717995866.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004111717995866.mp4",
                  "bitrate": 1186156,
                  "width": 576,
                  "height": 1024,
                  "duration": 11331
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lwcegtqwpvbtd2\",\"create_time\":1717992180,\"default_format\":{\"abitrate\":128644,\"bitrate\":513671,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":11350,\"format\":1600323,\"fps\":25.08897,\"height\":960,\"profile\":\"MP4\",\"size\":914213,\"update_time\":1717992272,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.default.mp4\",\"width\":540},\"duration\":11331,\"extend_formats\":{\"H265\":[{\"abitrate\":96816,\"bitrate\":335237,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":11331,\"format\":1600412,\"fps\":25.08897,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004121717995866.mp4\",\"profile\":\"MP4\",\"size\":621738,\"update_time\":1717995878,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004121717995866.mp4\",\"width\":360},{\"abitrate\":128798,\"bitrate\":555493,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":11331,\"format\":1600413,\"fps\":25.08897,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004131717995866.mp4\",\"profile\":\"MP4\",\"size\":976500,\"update_time\":1717995888,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004131717995866.mp4\",\"width\":540},{\"abitrate\":128798,\"bitrate\":664055,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":11331,\"format\":1600414,\"fps\":25.08897,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004141717995866.mp4\",\"profile\":\"MP4\",\"size\":1129031,\"update_time\":1717995887,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004141717995866.mp4\",\"width\":576},{\"abitrate\":128798,\"bitrate\":707811,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":11331,\"format\":1600415,\"fps\":25.08897,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004151717995866.mp4\",\"profile\":\"MP4\",\"size\":1190509,\"update_time\":1717995891,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004151717995866.mp4\",\"width\":576}]},\"formats\":[{\"abitrate\":96816,\"bitrate\":463238,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":11331,\"format\":1600408,\"fps\":25.08897,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004081717995866.mp4\",\"profile\":\"MP4\",\"size\":798831,\"update_time\":1717995871,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004081717995866.mp4\",\"width\":360},{\"abitrate\":128798,\"bitrate\":822987,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":11331,\"format\":1600409,\"fps\":25.08897,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4\",\"profile\":\"MP4\",\"size\":1349563,\"update_time\":1717995865,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4\",\"width\":540},{\"abitrate\":128798,\"bitrate\":971050,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":11331,\"format\":1600410,\"fps\":25.08897,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004101717995866.mp4\",\"profile\":\"MP4\",\"size\":1557607,\"update_time\":1717995874,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004101717995866.mp4\",\"width\":576},{\"abitrate\":128798,\"bitrate\":1186156,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":11331,\"format\":1600411,\"fps\":25.08897,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004111717995866.mp4\",\"profile\":\"MP4\",\"size\":1859831,\"update_time\":1717995873,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004111717995866.mp4\",\"width\":576}],\"serviceID\":6,\"update_time\":1717992263,\"vid\":\"vn-11110124-6ke14-lwcegtqwogrd66\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lwcegtqwpvbtd2\",\"create_time\":1717992180,\"default_format\":{\"abitrate\":128644,\"bitrate\":513671,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":11350,\"format\":1600323,\"fps\":25.08897,\"height\":960,\"profile\":\"MP4\",\"size\":914213,\"update_time\":1717992272,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.default.mp4\",\"width\":540},\"duration\":11331,\"extend_formats\":{\"H265\":[{\"abitrate\":96816,\"bitrate\":335237,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":11331,\"format\":1600412,\"fps\":25.08897,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004121717995866.mp4\",\"profile\":\"MP4\",\"size\":621738,\"update_time\":1717995878,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004121717995866.mp4\",\"width\":360},{\"abitrate\":128798,\"bitrate\":555493,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":11331,\"format\":1600413,\"fps\":25.08897,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004131717995866.mp4\",\"profile\":\"MP4\",\"size\":976500,\"update_time\":1717995888,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004131717995866.mp4\",\"width\":540},{\"abitrate\":128798,\"bitrate\":664055,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":11331,\"format\":1600414,\"fps\":25.08897,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004141717995866.mp4\",\"profile\":\"MP4\",\"size\":1129031,\"update_time\":1717995887,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004141717995866.mp4\",\"width\":576},{\"abitrate\":128798,\"bitrate\":707811,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":11331,\"format\":1600415,\"fps\":25.08897,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004151717995866.mp4\",\"profile\":\"MP4\",\"size\":1190509,\"update_time\":1717995891,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004151717995866.mp4\",\"width\":576}]},\"formats\":[{\"abitrate\":96816,\"bitrate\":463238,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":11331,\"format\":1600408,\"fps\":25.08897,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004081717995866.mp4\",\"profile\":\"MP4\",\"size\":798831,\"update_time\":1717995871,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004081717995866.mp4\",\"width\":360},{\"abitrate\":128798,\"bitrate\":822987,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":11331,\"format\":1600409,\"fps\":25.08897,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4\",\"profile\":\"MP4\",\"size\":1349563,\"update_time\":1717995865,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4\",\"width\":540},{\"abitrate\":128798,\"bitrate\":971050,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":11331,\"format\":1600410,\"fps\":25.08897,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004101717995866.mp4\",\"profile\":\"MP4\",\"size\":1557607,\"update_time\":1717995874,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004101717995866.mp4\",\"width\":576},{\"abitrate\":128798,\"bitrate\":1186156,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":11331,\"format\":1600411,\"fps\":25.08897,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004111717995866.mp4\",\"profile\":\"MP4\",\"size\":1859831,\"update_time\":1717995873,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004111717995866.mp4\",\"width\":576}],\"serviceID\":6,\"update_time\":1717992263,\"vid\":\"vn-11110124-6ke14-lwcegtqwogrd66\"}",
              "preload_format": {
                "format": 1600409,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke14-lwcegtqwogrd66.16004091717995857.mp4",
                "bitrate": 822987,
                "width": 540,
                "height": 960,
                "duration": 11331
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lwcegtqwpvbtd2",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2882312728687412225",
              "author_name": "vysamsung",
              "type": 0,
              "source": "",
              "title": "",
              "cover": "",
              "url": "https://play-src.vod.shopee.com/api/v4/11110124/mms/2882312728687412225.10005921717992263.aac",
              "duration": 11354,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 0
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 13781924339,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 23177097399,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 984103421,
                  "item_id": 23239711272,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 2525463,
                  "item_id": 18526657448,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 133905843,
                  "item_id": 25725813517,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "1QZpLa74BQDy04cQAAAAAA==",
            "user_id": 277337074,
            "user_name": "candysweety789",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 237,
              "likes": 2,
              "comments": 0
            },
            "ctime": 1719823203838,
            "avatar": "vn-11134233-7r98o-lxxj0wnyi40p1e",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1719823235770
            },
            "human_like": true,
            "shopee_nick_name": "Góc Của Kẹo",
            "source": 0
          },
          "content": {
            "caption": "Kem Đặc Có Đường, Thơm Ngon Dùng tiện lợi #shopeevideo Sữa đặc #dutchLady #videohangtieudung #kemdac #suadac",
            "mentions": [],
            "hashtags": [
              {
                "hashtag_id": "11432692145916448940",
                "hashtag_name": "",
                "start": 42,
                "length": 12,
                "is_official": false
              },
              {
                "hashtag_id": "9219684137764203437",
                "hashtag_name": "",
                "start": 63,
                "length": 10,
                "is_official": false
              },
              {
                "hashtag_id": "17374569060791809030",
                "hashtag_name": "",
                "start": 74,
                "length": 18,
                "is_official": false
              },
              {
                "hashtag_id": "13542550190048396587",
                "hashtag_name": "",
                "start": 93,
                "length": 7,
                "is_official": false
              },
              {
                "hashtag_id": "16293837636985163997",
                "hashtag_name": "",
                "start": 101,
                "length": 7,
                "is_official": false
              }
            ],
            "video": {
              "video_id": "vn-11110124-6khw7-lx6nbjbg9ryzf3",
              "cover": "https://down-vn.img.susercontent.com/sg-11110125-7rd48-lx7sjwoh68z870@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4",
              "size": 26351,
              "duration": 24566,
              "width": 1080,
              "height": 1920,
              "watermark_cover_url": "vn-11134114-7r98o-lx6ngd53wgk9c6",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003551719823215.5644.mp4",
              "formats": [
                {
                  "format": 1600322,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003221719823204.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003221719823204.mp4",
                  "bitrate": 197537,
                  "width": 360,
                  "height": 640,
                  "duration": 24534
                },
                {
                  "format": 1600409,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4",
                  "bitrate": 480451,
                  "width": 540,
                  "height": 960,
                  "duration": 24520
                },
                {
                  "format": 1600659,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16006591719823404.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16006591719823404.mp4",
                  "bitrate": 874121,
                  "width": 540,
                  "height": 960,
                  "duration": 24520
                },
                {
                  "format": 1600324,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003241719823339.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003241719823339.mp4",
                  "bitrate": 688181,
                  "width": 720,
                  "height": 1280,
                  "duration": 24534
                },
                {
                  "format": 1600411,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004111719823404.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004111719823404.mp4",
                  "bitrate": 1220084,
                  "width": 720,
                  "height": 1280,
                  "duration": 24520
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lx6nbjbgb6jf7e\",\"create_time\":1719823055,\"default_format\":{\"abitrate\":96083,\"bitrate\":428344,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":24534,\"format\":1600323,\"fps\":25.04078,\"height\":960,\"profile\":\"MP4\",\"size\":1627638,\"update_time\":1719823245,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.default.mp4\",\"width\":540},\"duration\":24566,\"extend_formats\":{\"H265\":[{\"abitrate\":96090,\"bitrate\":201895,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":24520,\"format\":1600412,\"fps\":25.04078,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004121719823404.mp4\",\"profile\":\"MP4\",\"size\":938358,\"update_time\":1719823422,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004121719823404.mp4\",\"width\":360},{\"abitrate\":96090,\"bitrate\":339037,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":24520,\"format\":1600413,\"fps\":25.04078,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004131719823404.mp4\",\"profile\":\"MP4\",\"size\":1358701,\"update_time\":1719823428,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004131719823404.mp4\",\"width\":540},{\"abitrate\":96090,\"bitrate\":514695,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":24520,\"format\":1600414,\"fps\":25.04078,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004141719823405.mp4\",\"profile\":\"MP4\",\"size\":1897105,\"update_time\":1719823442,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004141719823405.mp4\",\"width\":720},{\"abitrate\":96090,\"bitrate\":564738,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":24520,\"format\":1600415,\"fps\":25.04078,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004151719823404.mp4\",\"profile\":\"MP4\",\"size\":2050489,\"update_time\":1719823442,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004151719823404.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96083,\"bitrate\":197537,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":24534,\"format\":1600322,\"fps\":25.04078,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003221719823204.mp4\",\"profile\":\"MP4\",\"size\":920212,\"update_time\":1719823212,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003221719823204.mp4\",\"width\":360},{\"abitrate\":64060,\"bitrate\":480451,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":24520,\"format\":1600409,\"fps\":25.04078,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4\",\"profile\":\"MP4\",\"size\":1690882,\"update_time\":1719823404,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4\",\"width\":540},{\"abitrate\":64060,\"bitrate\":874121,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":24520,\"format\":1600659,\"fps\":25.04078,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16006591719823404.mp4\",\"profile\":\"MP4\",\"size\":2897480,\"update_time\":1719823416,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16006591719823404.mp4\",\"width\":540},{\"abitrate\":96083,\"bitrate\":688181,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":24534,\"format\":1600324,\"fps\":25.04078,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003241719823339.mp4\",\"profile\":\"MP4\",\"size\":2424054,\"update_time\":1719823359,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003241719823339.mp4\",\"width\":720},{\"abitrate\":96090,\"bitrate\":1220084,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":24520,\"format\":1600411,\"fps\":25.04078,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004111719823404.mp4\",\"profile\":\"MP4\",\"size\":4056045,\"update_time\":1719823424,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004111719823404.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1719823205,\"vid\":\"vn-11110124-6khw7-lx6nbjbg9ryzf3\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lx6nbjbgb6jf7e\",\"create_time\":1719823055,\"default_format\":{\"abitrate\":96083,\"bitrate\":428344,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":24534,\"format\":1600323,\"fps\":25.04078,\"height\":960,\"profile\":\"MP4\",\"size\":1627638,\"update_time\":1719823245,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.default.mp4\",\"width\":540},\"duration\":24566,\"extend_formats\":{\"H265\":[{\"abitrate\":96090,\"bitrate\":201895,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":24520,\"format\":1600412,\"fps\":25.04078,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004121719823404.mp4\",\"profile\":\"MP4\",\"size\":938358,\"update_time\":1719823422,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004121719823404.mp4\",\"width\":360},{\"abitrate\":96090,\"bitrate\":339037,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":24520,\"format\":1600413,\"fps\":25.04078,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004131719823404.mp4\",\"profile\":\"MP4\",\"size\":1358701,\"update_time\":1719823428,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004131719823404.mp4\",\"width\":540},{\"abitrate\":96090,\"bitrate\":514695,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":24520,\"format\":1600414,\"fps\":25.04078,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004141719823405.mp4\",\"profile\":\"MP4\",\"size\":1897105,\"update_time\":1719823442,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004141719823405.mp4\",\"width\":720},{\"abitrate\":96090,\"bitrate\":564738,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":24520,\"format\":1600415,\"fps\":25.04078,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004151719823404.mp4\",\"profile\":\"MP4\",\"size\":2050489,\"update_time\":1719823442,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004151719823404.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96083,\"bitrate\":197537,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":24534,\"format\":1600322,\"fps\":25.04078,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003221719823204.mp4\",\"profile\":\"MP4\",\"size\":920212,\"update_time\":1719823212,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003221719823204.mp4\",\"width\":360},{\"abitrate\":64060,\"bitrate\":480451,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":24520,\"format\":1600409,\"fps\":25.04078,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4\",\"profile\":\"MP4\",\"size\":1690882,\"update_time\":1719823404,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4\",\"width\":540},{\"abitrate\":64060,\"bitrate\":874121,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":24520,\"format\":1600659,\"fps\":25.04078,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16006591719823404.mp4\",\"profile\":\"MP4\",\"size\":2897480,\"update_time\":1719823416,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16006591719823404.mp4\",\"width\":540},{\"abitrate\":96083,\"bitrate\":688181,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":24534,\"format\":1600324,\"fps\":25.04078,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003241719823339.mp4\",\"profile\":\"MP4\",\"size\":2424054,\"update_time\":1719823359,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16003241719823339.mp4\",\"width\":720},{\"abitrate\":96090,\"bitrate\":1220084,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":24520,\"format\":1600411,\"fps\":25.04078,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004111719823404.mp4\",\"profile\":\"MP4\",\"size\":4056045,\"update_time\":1719823424,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004111719823404.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1719823205,\"vid\":\"vn-11110124-6khw7-lx6nbjbg9ryzf3\"}",
              "preload_format": {
                "format": 1600409,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6khw7-lx6nbjbg9ryzf3.16004091719823392.mp4",
                "bitrate": 480451,
                "width": 540,
                "height": 960,
                "duration": 24520
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lx6nbjbgb6jf7e",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2885384538807076010",
              "author_name": "candysweety789",
              "type": 0,
              "source": "",
              "title": "",
              "cover": "",
              "url": "https://play-src.vod.shopee.com/api/v4/11110124/mms/2885384538807076010.10005921719823205.aac",
              "duration": 24566,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 0
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 13781924339,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 23177097399,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 11067300045,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 18685419498,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 17499252550,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": false,
            "allow_duet": false
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "Y4NXbcZoBQD1GK48AAAAAA==",
            "user_id": 1018042613,
            "user_name": "longhaune",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 11939,
              "likes": 31,
              "comments": 0
            },
            "ctime": 1710165884309,
            "avatar": "vn-11134233-7r98o-lt4tzb9jrvt049",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1710465483184
            },
            "human_like": true,
            "shopee_nick_name": "Săn deal giá hời",
            "source": 0
          },
          "content": {
            "caption": "Kem đặc có đường Dutch Lady dạng túi",
            "mentions": [],
            "hashtags": [],
            "video": {
              "video_id": "vn-11110124-6ke16-lsr44s3k122s12",
              "cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lsr44s3k2gn823@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4",
              "size": 1927,
              "duration": 9265,
              "width": 720,
              "height": 1280,
              "watermark_cover_url": "vn-11134114-7r98o-lsr47xqrq2847a",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16003551710165893.8401.mp4",
              "formats": [
                {
                  "format": 1600408,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004081710165910.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004081710165910.mp4",
                  "bitrate": 222715,
                  "width": 360,
                  "height": 640,
                  "duration": 9265
                },
                {
                  "format": 1600409,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4",
                  "bitrate": 403065,
                  "width": 540,
                  "height": 960,
                  "duration": 9265
                },
                {
                  "format": 1600410,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004101710165915.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004101710165915.mp4",
                  "bitrate": 658811,
                  "width": 720,
                  "height": 1280,
                  "duration": 9265
                },
                {
                  "format": 1600411,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004111710165915.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004111710165915.mp4",
                  "bitrate": 905664,
                  "width": 720,
                  "height": 1280,
                  "duration": 9265
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lsr44s3k2gn823\",\"create_time\":1710165784,\"default_format\":{\"abitrate\":128819,\"bitrate\":378857,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":9279,\"format\":1600323,\"fps\":25.10965,\"height\":960,\"profile\":\"MP4\",\"size\":589741,\"update_time\":1710165888,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.default.mp4\",\"width\":540},\"duration\":9265,\"extend_formats\":{\"H265\":[{\"abitrate\":96931,\"bitrate\":223808,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":9265,\"format\":1600412,\"fps\":25.10965,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004121710165915.mp4\",\"profile\":\"MP4\",\"size\":379205,\"update_time\":1710165922,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004121710165915.mp4\",\"width\":360},{\"abitrate\":128902,\"bitrate\":377713,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":9265,\"format\":1600413,\"fps\":25.10965,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004131710165915.mp4\",\"profile\":\"MP4\",\"size\":591682,\"update_time\":1710165924,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004131710165915.mp4\",\"width\":540},{\"abitrate\":128902,\"bitrate\":595838,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":9265,\"format\":1600414,\"fps\":25.10965,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004141710165915.mp4\",\"profile\":\"MP4\",\"size\":840347,\"update_time\":1710165928,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004141710165915.mp4\",\"width\":720},{\"abitrate\":128902,\"bitrate\":639425,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":9265,\"format\":1600415,\"fps\":25.10965,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004151710165915.mp4\",\"profile\":\"MP4\",\"size\":890037,\"update_time\":1710165928,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004151710165915.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96931,\"bitrate\":222715,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":9265,\"format\":1600408,\"fps\":25.10965,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004081710165910.mp4\",\"profile\":\"MP4\",\"size\":375249,\"update_time\":1710165914,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004081710165910.mp4\",\"width\":360},{\"abitrate\":128902,\"bitrate\":403065,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":9265,\"format\":1600409,\"fps\":25.10965,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4\",\"profile\":\"MP4\",\"size\":617873,\"update_time\":1710165919,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4\",\"width\":540},{\"abitrate\":128902,\"bitrate\":658811,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":9265,\"format\":1600410,\"fps\":25.10965,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004101710165915.mp4\",\"profile\":\"MP4\",\"size\":909423,\"update_time\":1710165920,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004101710165915.mp4\",\"width\":720},{\"abitrate\":128902,\"bitrate\":905664,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":9265,\"format\":1600411,\"fps\":25.10965,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004111710165915.mp4\",\"profile\":\"MP4\",\"size\":1190835,\"update_time\":1710165920,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004111710165915.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1710165885,\"vid\":\"vn-11110124-6ke16-lsr44s3k122s12\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lsr44s3k2gn823\",\"create_time\":1710165784,\"default_format\":{\"abitrate\":128819,\"bitrate\":378857,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":9279,\"format\":1600323,\"fps\":25.10965,\"height\":960,\"profile\":\"MP4\",\"size\":589741,\"update_time\":1710165888,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.default.mp4\",\"width\":540},\"duration\":9265,\"extend_formats\":{\"H265\":[{\"abitrate\":96931,\"bitrate\":223808,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":9265,\"format\":1600412,\"fps\":25.10965,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004121710165915.mp4\",\"profile\":\"MP4\",\"size\":379205,\"update_time\":1710165922,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004121710165915.mp4\",\"width\":360},{\"abitrate\":128902,\"bitrate\":377713,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":9265,\"format\":1600413,\"fps\":25.10965,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004131710165915.mp4\",\"profile\":\"MP4\",\"size\":591682,\"update_time\":1710165924,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004131710165915.mp4\",\"width\":540},{\"abitrate\":128902,\"bitrate\":595838,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":9265,\"format\":1600414,\"fps\":25.10965,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004141710165915.mp4\",\"profile\":\"MP4\",\"size\":840347,\"update_time\":1710165928,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004141710165915.mp4\",\"width\":720},{\"abitrate\":128902,\"bitrate\":639425,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":9265,\"format\":1600415,\"fps\":25.10965,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004151710165915.mp4\",\"profile\":\"MP4\",\"size\":890037,\"update_time\":1710165928,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004151710165915.mp4\",\"width\":720}]},\"formats\":[{\"abitrate\":96931,\"bitrate\":222715,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":9265,\"format\":1600408,\"fps\":25.10965,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004081710165910.mp4\",\"profile\":\"MP4\",\"size\":375249,\"update_time\":1710165914,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004081710165910.mp4\",\"width\":360},{\"abitrate\":128902,\"bitrate\":403065,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":9265,\"format\":1600409,\"fps\":25.10965,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4\",\"profile\":\"MP4\",\"size\":617873,\"update_time\":1710165919,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4\",\"width\":540},{\"abitrate\":128902,\"bitrate\":658811,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":9265,\"format\":1600410,\"fps\":25.10965,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004101710165915.mp4\",\"profile\":\"MP4\",\"size\":909423,\"update_time\":1710165920,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004101710165915.mp4\",\"width\":720},{\"abitrate\":128902,\"bitrate\":905664,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":9265,\"format\":1600411,\"fps\":25.10965,\"height\":1280,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004111710165915.mp4\",\"profile\":\"MP4\",\"size\":1190835,\"update_time\":1710165920,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004111710165915.mp4\",\"width\":720}],\"serviceID\":6,\"update_time\":1710165885,\"vid\":\"vn-11110124-6ke16-lsr44s3k122s12\"}",
              "preload_format": {
                "format": 1600409,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke16-lsr44s3k122s12.16004091710165915.mp4",
                "bitrate": 403065,
                "width": 540,
                "height": 960,
                "duration": 9265
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lsr44s3k2gn823",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2869181994900653061",
              "author_name": "longhaune",
              "type": 0,
              "source": "",
              "title": "",
              "cover": "",
              "url": "https://down-sp-vn.vod.susercontent.com/api/v4/11110124/mms/2869181994900653061.aac",
              "duration": 9264,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "camera": {},
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 10
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 13781924339,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 23177097399,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 137608378,
                  "item_id": 25451594409,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 69987000,
                  "item_id": 23446721741,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 546105038,
                  "item_id": 15629170462,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      },
      {
        "post": {
          "meta": {
            "post_id": "lQdSkN2yBQBlM_oqAAAAAA==",
            "user_id": 721040229,
            "user_name": "thv.vgg",
            "user_state": 0,
            "status": 1,
            "qc_status": 1,
            "count_info": {
              "views": 308,
              "likes": 2,
              "comments": 0
            },
            "ctime": 1715138005395,
            "avatar": "ba4c0f058b2eefd1cfc9757d298a079a",
            "qc_info": {
              "violation_category": 0,
              "violation_content": "",
              "qc_time": 1715138045907
            },
            "human_like": true,
            "shopee_nick_name": "Di béo 🌼",
            "source": 0
          },
          "content": {
            "caption": "lẻ bịch sữa kem đặc có đường dutch lady #dutchlady",
            "mentions": [],
            "hashtags": [
              {
                "hashtag_id": "9219684137764203437",
                "hashtag_name": "",
                "start": 40,
                "length": 10,
                "is_official": false
              }
            ],
            "video": {
              "video_id": "vn-11110124-6ke17-lv195dkwl3axcc",
              "cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lv195dkwmhvdfe@resize_ss480x640!@crop_w480_h640_cT",
              "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4",
              "size": 41061,
              "duration": 40450,
              "width": 576,
              "height": 1024,
              "watermark_cover_url": "vn-11134114-7r98o-lv195k9gt24955",
              "watermark_video_url": "https://mms.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16003551715138006.2537.mp4",
              "formats": [
                {
                  "format": 1600408,
                  "defn": "V360P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004081715138179.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004081715138179.mp4",
                  "bitrate": 322093,
                  "width": 360,
                  "height": 640,
                  "duration": 40450
                },
                {
                  "format": 1600409,
                  "defn": "V540P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4",
                  "bitrate": 602061,
                  "width": 540,
                  "height": 960,
                  "duration": 40450
                },
                {
                  "format": 1600410,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004101715138179.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004101715138179.mp4",
                  "bitrate": 733564,
                  "width": 576,
                  "height": 1024,
                  "duration": 40450
                },
                {
                  "format": 1600411,
                  "defn": "V720P",
                  "profile": "MP4",
                  "path": "api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004111715138179.mp4",
                  "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004111715138179.mp4",
                  "bitrate": 1042045,
                  "width": 576,
                  "height": 1024,
                  "duration": 40450
                }
              ],
              "mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lv195dkwmhvdfe\",\"create_time\":1715138004,\"default_format\":{\"abitrate\":128098,\"bitrate\":462641,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":40470,\"format\":1600323,\"fps\":25.02478,\"height\":960,\"profile\":\"MP4\",\"size\":3014258,\"update_time\":1715138031,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.default.mp4\",\"width\":540},\"duration\":40450,\"extend_formats\":{\"H265\":[{\"abitrate\":96146,\"bitrate\":259143,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":40450,\"format\":1600412,\"fps\":25.02478,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004121715138179.mp4\",\"profile\":\"MP4\",\"size\":1832230,\"update_time\":1715138209,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004121715138179.mp4\",\"width\":360},{\"abitrate\":128126,\"bitrate\":450846,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":40450,\"format\":1600413,\"fps\":25.02478,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004131715138179.mp4\",\"profile\":\"MP4\",\"size\":2961069,\"update_time\":1715138223,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004131715138179.mp4\",\"width\":540},{\"abitrate\":128126,\"bitrate\":564311,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":40450,\"format\":1600414,\"fps\":25.02478,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004141715138179.mp4\",\"profile\":\"MP4\",\"size\":3533499,\"update_time\":1715138226,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004141715138179.mp4\",\"width\":576},{\"abitrate\":128126,\"bitrate\":610412,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":40450,\"format\":1600415,\"fps\":25.02478,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004151715138179.mp4\",\"profile\":\"MP4\",\"size\":3766081,\"update_time\":1715138226,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004151715138179.mp4\",\"width\":576}]},\"formats\":[{\"abitrate\":96146,\"bitrate\":322093,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":40450,\"format\":1600408,\"fps\":25.02478,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004081715138179.mp4\",\"profile\":\"MP4\",\"size\":2146361,\"update_time\":1715138191,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004081715138179.mp4\",\"width\":360},{\"abitrate\":128126,\"bitrate\":602061,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":40450,\"format\":1600409,\"fps\":25.02478,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4\",\"profile\":\"MP4\",\"size\":3720502,\"update_time\":1715138178,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4\",\"width\":540},{\"abitrate\":128126,\"bitrate\":733564,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":40450,\"format\":1600410,\"fps\":25.02478,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004101715138179.mp4\",\"profile\":\"MP4\",\"size\":4383932,\"update_time\":1715138197,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004101715138179.mp4\",\"width\":576},{\"abitrate\":128126,\"bitrate\":1042045,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":40450,\"format\":1600411,\"fps\":25.02478,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004111715138179.mp4\",\"profile\":\"MP4\",\"size\":5940220,\"update_time\":1715138198,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004111715138179.mp4\",\"width\":576}],\"serviceID\":6,\"update_time\":1715138008,\"vid\":\"vn-11110124-6ke17-lv195dkwl3axcc\"}",
              "preload_url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4",
              "preload_mms_data": "{\"ab_test\":\"106024\",\"biz\":125,\"cover\":\"https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lv195dkwmhvdfe\",\"create_time\":1715138004,\"default_format\":{\"abitrate\":128098,\"bitrate\":462641,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":40470,\"format\":1600323,\"fps\":25.02478,\"height\":960,\"profile\":\"MP4\",\"size\":3014258,\"update_time\":1715138031,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.default.mp4\",\"width\":540},\"duration\":40450,\"extend_formats\":{\"H265\":[{\"abitrate\":96146,\"bitrate\":259143,\"codec\":\"H265\",\"defn\":\"V360P\",\"duration\":40450,\"format\":1600412,\"fps\":25.02478,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004121715138179.mp4\",\"profile\":\"MP4\",\"size\":1832230,\"update_time\":1715138209,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004121715138179.mp4\",\"width\":360},{\"abitrate\":128126,\"bitrate\":450846,\"codec\":\"H265\",\"defn\":\"V540P\",\"duration\":40450,\"format\":1600413,\"fps\":25.02478,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004131715138179.mp4\",\"profile\":\"MP4\",\"size\":2961069,\"update_time\":1715138223,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004131715138179.mp4\",\"width\":540},{\"abitrate\":128126,\"bitrate\":564311,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":40450,\"format\":1600414,\"fps\":25.02478,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004141715138179.mp4\",\"profile\":\"MP4\",\"size\":3533499,\"update_time\":1715138226,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004141715138179.mp4\",\"width\":576},{\"abitrate\":128126,\"bitrate\":610412,\"codec\":\"H265\",\"defn\":\"V720P\",\"duration\":40450,\"format\":1600415,\"fps\":25.02478,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004151715138179.mp4\",\"profile\":\"MP4\",\"size\":3766081,\"update_time\":1715138226,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004151715138179.mp4\",\"width\":576}]},\"formats\":[{\"abitrate\":96146,\"bitrate\":322093,\"codec\":\"H264\",\"defn\":\"V360P\",\"duration\":40450,\"format\":1600408,\"fps\":25.02478,\"height\":640,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004081715138179.mp4\",\"profile\":\"MP4\",\"size\":2146361,\"update_time\":1715138191,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004081715138179.mp4\",\"width\":360},{\"abitrate\":128126,\"bitrate\":602061,\"codec\":\"H264\",\"defn\":\"V540P\",\"duration\":40450,\"format\":1600409,\"fps\":25.02478,\"height\":960,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4\",\"profile\":\"MP4\",\"size\":3720502,\"update_time\":1715138178,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4\",\"width\":540},{\"abitrate\":128126,\"bitrate\":733564,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":40450,\"format\":1600410,\"fps\":25.02478,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004101715138179.mp4\",\"profile\":\"MP4\",\"size\":4383932,\"update_time\":1715138197,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004101715138179.mp4\",\"width\":576},{\"abitrate\":128126,\"bitrate\":1042045,\"codec\":\"H264\",\"defn\":\"V720P\",\"duration\":40450,\"format\":1600411,\"fps\":25.02478,\"height\":1024,\"path\":\"api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004111715138179.mp4\",\"profile\":\"MP4\",\"size\":5940220,\"update_time\":1715138198,\"url\":\"https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004111715138179.mp4\",\"width\":576}],\"serviceID\":6,\"update_time\":1715138008,\"vid\":\"vn-11110124-6ke17-lv195dkwl3axcc\"}",
              "preload_format": {
                "format": 1600409,
                "defn": "V540P",
                "profile": "MP4",
                "path": "api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4",
                "url": "https://down-tx-vn.vod.susercontent.com/api/v4/11110124/mms/vn-11110124-6ke17-lv195dkwl3axcc.16004091715138159.mp4",
                "bitrate": 602061,
                "width": 540,
                "height": 960,
                "duration": 40450
              },
              "mms_cover": "https://down-bs-vn.img.susercontent.com/vn-11110124-7r98o-lv195dkwmhvdfe",
              "skip_cover_check": false
            },
            "music": {
              "music_id": "2877524079714239610",
              "author_name": "thv.vgg",
              "type": 0,
              "source": "",
              "title": "",
              "cover": "",
              "url": "https://play-src.vod.shopee.com/api/v4/11110124/mms/2877524079714239610.10005921715138008.aac",
              "duration": 40472,
              "start": 0,
              "original": false,
              "state": 0,
              "downloadable": false,
              "soundtracks": null
            },
            "media_sdk_info": {
              "edit": [
                {}
              ],
              "effect_ids": null,
              "template_id": 0
            },
            "products": {
              "item_list": [
                {
                  "shop_id": 131420188,
                  "item_id": 2111777662,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 13781924339,
                  "mcn_campaign_token": ""
                },
                {
                  "shop_id": 131420188,
                  "item_id": 23177097399,
                  "mcn_campaign_token": ""
                }
              ]
            },
            "stitch_info": null,
            "duet_info": null,
            "incentive_info": {
              "traffic_bonus": 0
            },
            "qc_labels": [
              {
                "type": 6
              }
            ]
          },
          "interact": {},
          "hot_hashtag_info": null,
          "in_fmt_wl": false,
          "allow_info": {
            "allow_stitch": true,
            "allow_duet": true
          },
          "comments": [],
          "relation_source": 0,
          "label": {
            "pdp_tags": null
          },
          "extend": {
            "bought": false,
            "enable_ai_chat": false
          }
        },
        "live_session": null,
        "review": null,
        "card": null,
        "product": null
      }
    ]
  }
}
```

