package com.example.campuskiosk

import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.navigation.fragment.findNavController
import androidx.navigation.fragment.navArgs

class FacilityDetailFragment: Fragment(R.layout.fragment_facility_detail) {

    private val args: FacilityDetailFragmentArgs by navArgs()

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        val facility = sampleFacilities.first { it.id == args.facilityId }

        view.findViewById<TextView>(R.id.detailName).text = facility.name
        view.findViewById<TextView>(R.id.detailHours).text = facility.hours
        view.findViewById<TextView>(R.id.detailStatus).text =
            if (facility.isOpenNow) "Open now" else "Closed"
        view.findViewById<Button>(R.id.backButton).setOnClickListener {
            findNavController().navigateUp()
        }
    }
}