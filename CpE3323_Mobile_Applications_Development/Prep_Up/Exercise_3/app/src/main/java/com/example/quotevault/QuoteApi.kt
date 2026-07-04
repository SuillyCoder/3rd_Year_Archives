package com.example.quotevault

import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.http.GET

data class QuoteResponse(val quote: String, val author: String)
interface QuoteApiService {
    @GET("quotes/random")
    suspend fun getRandomQuote(): QuoteResponse
}
object RetrofitInstance {
    val api: QuoteApiService by lazy {
        Retrofit.Builder()
            .baseUrl("https://dummyjson.com/")
            .addConverterFactory(GsonConverterFactory.create())
            .build()
            .create(QuoteApiService::class.java)
    }
}

