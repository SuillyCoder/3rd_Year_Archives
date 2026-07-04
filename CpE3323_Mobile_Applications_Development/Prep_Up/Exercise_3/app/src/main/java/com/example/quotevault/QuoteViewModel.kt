package com.example.quotevault

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.google.firebase.Firebase
import com.google.firebase.firestore.firestore
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch

class QuoteViewModel : ViewModel() {
    private val _uiState = MutableStateFlow<QuoteUiState>(QuoteUiState.Loading)
    val uiState: StateFlow<QuoteUiState> = _uiState

    private val firestore = Firebase.firestore

    init { fetchQuote() }

    fun fetchQuote() {
        _uiState.value = QuoteUiState.Loading
        viewModelScope.launch {
            try {
                val quote = RetrofitInstance.api.getRandomQuote()
                _uiState.value = QuoteUiState.Success(quote.quote, quote.author, isFavorite = false)
            } catch (e: Exception) {
                _uiState.value = QuoteUiState.Error(e.message ?: "Something went wrong")
            }
        }
    }

    fun toggleFavorite() {
        val current = _uiState.value
        if (current is QuoteUiState.Success) {
            val newFav = !current.isFavorite
            _uiState.value = current.copy(isFavorite = newFav)
            if (newFav) {
                firestore.collection("favorites").add(
                    mapOf("content" to current.content, "author" to current.author)
                )
            }
        }
    }
}