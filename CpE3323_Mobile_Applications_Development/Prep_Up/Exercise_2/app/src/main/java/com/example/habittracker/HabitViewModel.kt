package com.example.habittracker

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch

class HabitViewModel(private val dao: HabitDao) : ViewModel() {
    val habits: StateFlow<List<HabitEntity>> = dao.observeAll()
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), emptyList())
    fun addHabit(name: String) {
        viewModelScope.launch { dao.insert(HabitEntity(name = name)) }
    }
    fun toggleToday(habit: HabitEntity) {
        viewModelScope.launch {
            val updated = if (habit.isCheckedToday)
                habit.copy(isCheckedToday = false, streak = (habit.streak - 1).coerceAtLeast(0))
            else
                habit.copy(isCheckedToday = true, streak = habit.streak + 1)
            dao.update(updated)
        }
    }
}
@Suppress("UNCHECKED_CAST")
class HabitViewModelFactory(private val dao: HabitDao) : ViewModelProvider.Factory {
    override fun <T : ViewModel> create(modelClass: Class<T>): T =
        HabitViewModel(dao) as T
}
