package com.test.pocker52test

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import com.pocket52.application.Config
import com.pocket52.application.IPokerListener
import com.pocket52.application.MODE
import com.pocket52.application.P52Poker

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        initPocker()
    }

    private fun initPocker() {
        val config = Config(applicationContext,
            "",
            MODE.TEST,
            "",
            IPokerListener { error -> Log.d("Pocker", "pocker error :" + error.name) })
        P52Poker.get().init(config)
        P52Poker.get().openPokerRooms()
    }
}
