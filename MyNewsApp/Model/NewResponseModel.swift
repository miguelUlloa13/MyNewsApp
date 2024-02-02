//
//  NewResponseModel.swift
//  MyNewsApp
//
//  Created by Miguel Ulloa on 02/02/24.
//

import Foundation

struct NewResponseModel: Decodable {
    
    let status: String
    let totalResults: Int
    let articles: [NewDataModel]
    
}

/*
 {
 "status": "ok",
 {
    "status":"ok",
    "totalResults":14659,
    "articles":[
       {
          "source":{
             "id":null,
             "name":"CNA"
          },
          "author":null,
          "title":"Musk, Tesla board have to start from scratch after $56 billion pay deal thrown out",
          "description":":After a Delaware court threw out Elon Musk's $56 billion pay package on Tuesday, the Tesla chief executive and a board seen as captive to him must find a way to negotiate a replacement contract. It will not be easy.The ruling is spurring on investors who for…",
          "url":"https://www.channelnewsasia.com/business/musk-tesla-board-have-start-scratch-after-56-billion-pay-deal-thrown-out-4090111",
          "urlToImage":"https://onecms-res.cloudinary.com/image/upload/s--QR9d5Jwn--/fl_relative,g_south_east,l_one-cms:core:watermark:reuters,w_0.1/f_auto,q_auto/c_fill,g_auto,h_676,w_1200/v1/one-cms/core/2024-01-31t210403z_2_lynxmpek0u0vg_rtroptp_3_ai-britain-summit-sunak-musk.jpg?itok=q-tROmIV",
          "publishedAt":"2024-01-31T21:03:06Z",
          "content":":After a Delaware court threw out Elon Musk's $56 billion pay package on Tuesday, the Tesla chief executive and a board seen as captive to him must find a way to negotiate a replacement contract. It … [+4154 chars]"
       },
 */
