package com.example.campuskiosk

data class Facility(
    val id: Int,
    val name: String,
    val building: String,
    val hours: String,
    val isOpenNow: Boolean
)
val sampleFacilities = listOf(
    Facility(1, "Main Library", "Bldg A", "7:00 AM – 9:00 PM", true),
    Facility(2, "Computer Lab 3", "Bldg C", "8:00 AM – 5:00 PM", true),
    Facility(3, "Registrar's Office", "Bldg A", "8:00 AM – 12:00 NN", false),
    Facility(4, "Cafeteria", "Bldg B", "6:00 AM – 8:00 PM", true),
    Facility(5, "Gymnasium", "Bldg D", "Closed for maintenance", false)
)