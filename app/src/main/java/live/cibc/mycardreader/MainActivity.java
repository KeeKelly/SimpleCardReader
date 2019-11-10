package live.cibc.mycardreader;

import androidx.appcompat.app.AppCompatActivity;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;

import cards.pay.paycardsrecognizer.sdk.Card;
import cards.pay.paycardsrecognizer.sdk.ScanCardIntent;



public class MainActivity extends AppCompatActivity {
    int passwordVisible = 0;
    EditText password;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ImageButton scanButton = (ImageButton)findViewById(R.id.scanButton);
        scanButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onClickScanButton();
            }
        });

    }

    static final int REQUEST_CODE_SCAN_CARD = 1;
    private static final String TAG = "ScaningTag";


    private void onClickScanButton() {
        Intent intent = new ScanCardIntent.Builder(this).build();
        System.out.println(this);
        System.out.println(MainActivity.class);
        startActivityForResult(intent, REQUEST_CODE_SCAN_CARD);
    }


    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == REQUEST_CODE_SCAN_CARD) {
            if (resultCode == Activity.RESULT_OK) {
                Card card = data.getParcelableExtra(ScanCardIntent.RESULT_PAYCARDS_CARD);
                String cardData = "Card number: " + card.getCardNumberRedacted();
                Log.i(TAG, "Card info: " + cardData);
                EditText cardNumber = (EditText) findViewById(R.id.cardNumberEditText);
                cardNumber.setText(card.getCardNumberRedacted());
            } else if (resultCode == Activity.RESULT_CANCELED) {
                Log.i(TAG, "Scan canceled");
            } else {
                Log.i(TAG, "Scan failed");
            }
        }
    }

}

