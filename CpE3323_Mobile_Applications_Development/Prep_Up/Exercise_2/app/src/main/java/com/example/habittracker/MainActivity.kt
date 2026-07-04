package com.example.habittracker

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.outlined.Circle
import androidx.compose.material3.Button
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            MaterialTheme {
                val dao = HabitDatabase.getInstance(applicationContext).habitDao()
                val viewModel: HabitViewModel = viewModel(
                    factory = HabitViewModelFactory(dao)
                )
                val navController = rememberNavController()
                NavHost(navController = navController, startDestination = "list") {
                    composable("list") {
                        HabitListScreen(
                            viewModel = viewModel,
                            onAddClick = { navController.navigate("add") }
                        )
                    }
                    composable("add") {
                        AddHabitScreen(
                            onSave = { name ->
                                viewModel.addHabit(name)
                                navController.popBackStack()
                            }
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun HabitListScreen(viewModel: HabitViewModel, onAddClick: () -> Unit) {
    val habits by viewModel.habits.collectAsState()
    Column(Modifier.fillMaxSize()) {
        LazyColumn(Modifier.weight(1f)) {
            items(habits, key = { it.id }) { habit ->
                Row(
                    Modifier
                        .fillMaxWidth()
                        .padding(16.dp)
                        .clickable { viewModel.toggleToday(habit) },
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        imageVector = if (habit.isCheckedToday)
                            Icons.Filled.CheckCircle else Icons.Outlined.Circle,
                        contentDescription = null
                    )
                    Spacer(Modifier.width(12.dp))
                    Column {
                        Text(habit.name, fontWeight = FontWeight.Bold)
                        Text("Streak: ${habit.streak} days", color = Color.Gray)
                    }
                }
            }
        }
        Button(onClick = onAddClick, modifier = Modifier.padding(16.dp)) {
            Text("Add Habit")
        }
    }
}

@Composable
fun AddHabitScreen(onSave: (String) -> Unit) {
    var text by remember { mutableStateOf("") }

    Column(Modifier.fillMaxSize().padding(24.dp)) {
        Text("New Habit", fontWeight = FontWeight.Bold)
        Spacer(Modifier.width(12.dp))
        OutlinedTextField(
            value = text,
            onValueChange = { text = it },
            label = { Text("Habit name") },
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(Modifier.width(12.dp))
        Button(
            onClick = { if (text.isNotBlank()) onSave(text) },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text("Save")
        }
    }
}