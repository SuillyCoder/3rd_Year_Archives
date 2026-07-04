package com.example.quotevault

import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import com.example.quotevault.ui.theme.QuoteVaultTheme
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Favorite
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.outlined.FavoriteBorder
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            QuoteVaultTheme {
                Scaffold(modifier = Modifier.fillMaxSize()) { innerPadding ->
                    QuoteScreen(modifier = Modifier.padding(innerPadding))
                }
            }
        }
    }
}

@Composable
fun QuoteScreen(
    modifier: Modifier = Modifier,
    viewModel: QuoteViewModel = viewModel()
    ) {
    val state by viewModel.uiState.collectAsState()
    Column(
        modifier
            .fillMaxSize()
            .padding(24.dp),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        when (val s = state) {
            is QuoteUiState.Loading -> CircularProgressIndicator()
            is QuoteUiState.Success -> {
                Text("\u201c${s.content}\u201d", fontSize = 20.sp, textAlign = TextAlign.Center)
                Spacer(Modifier.height(8.dp))
                Text("\u2014 ${s.author}", color = Color.Gray)
                Spacer(Modifier.height(16.dp))
                Row {
                    IconButton(onClick = { viewModel.toggleFavorite() }) {
                        Icon(
                            if (s.isFavorite) Icons.Filled.Favorite else Icons.Outlined.FavoriteBorder,
                            contentDescription = "Favorite"
                        )
                    }
                    IconButton(onClick = { viewModel.fetchQuote() }) {
                        Icon(Icons.Filled.Refresh, contentDescription = "Next quote")
                    }
                }
            }
            is QuoteUiState.Error -> {
                Text("Couldn't load a quote: ${s.message}", color = Color.Red)
                Spacer(Modifier.height(8.dp))
                Button(onClick = { viewModel.fetchQuote() }) { Text("Retry") }
            }
        }
    }
}
