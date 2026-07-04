package com.example.quotevault

sealed class QuoteUiState {
    object Loading : QuoteUiState()
    data class Success(val content: String, val author: String, val isFavorite: Boolean) : QuoteUiState()
    data class Error(val message: String) : QuoteUiState()
}