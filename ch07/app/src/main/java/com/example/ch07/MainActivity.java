package com.example.ch07;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.LightingColorFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {


    private String mName="???";
    private String mPassword="???";



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        updateResult();
    }

    private void updateResult() {
        TextView textResult=(TextView) findViewById(R.id.textResult);
        textResult.setText("이름: "+mName+"\n"+"암호: "+mPassword);
    }

    public void mOnClick(View v){
        AlertDialog.Builder builder=new AlertDialog.Builder(this);
        LayoutInflater inflater=getLayoutInflater();
        View layout=inflater.inflate(R.layout.dialog_login,null);
        builder.setView(layout);

        final EditText mEditName=(EditText) layout.findViewById(R.id.editName);
        final EditText mEditPassword=(EditText) layout.findViewById(R.id.editPassword);
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                mName=mEditName.getText().toString();
                mPassword=mEditPassword.getText().toString();
                updateResult();

            }
        });
        builder.setNegativeButton(android.R.string.cancel,null);
        builder.create().show();
    }
    /*

    public void mOnClick(View view){
        PopupMenu popup=new PopupMenu(this,view);
        MenuInflater inflater=getMenuInflater();
        inflater.inflate(R.menu.menu_option,popup.getMenu());
        popup.setOnMenuItemClickListener(this);
        popup.show();
    }



    @Override
    public boolean onMenuItemClick(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.item1:
                mImage.setColorFilter(new LightingColorFilter(0xff0000, 0));
                return true;
            case R.id.item2:
                mImage.setColorFilter(new LightingColorFilter(0x00ff00, 0));
                return true;
            case R.id.item3:
                mImage.setColorFilter(new LightingColorFilter(0x0000ff, 0));
                return true;
            case R.id.item4:
                mImage.setColorFilter(new LightingColorFilter(0xffffff, 0));
                return true;
        }
        return false;

    }
/*
    public boolean onCreateOptionsMenu(Menu menu){
        MenuInflater inflater=getMenuInflater();
        inflater.inflate(R.menu.menu_option,menu);
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onOptionsItemSelected(MenuItem item){
        switch (item.getItemId()){
            case R.id.item1:
                Toast.makeText(this,"메뉴1 선택",Toast.LENGTH_SHORT).show();
                return true;
            case R.id.item2:
                Toast.makeText(this,"메뉴2 선택",Toast.LENGTH_SHORT).show();
                return true;
            case R.id.item3:
                Toast.makeText(this,item.getTitle()+"선택",Toast.LENGTH_SHORT).show();
                return true;
            case R.id.item4:
                Toast.makeText(this,item.getTitle()+"선택",Toast.LENGTH_SHORT).show();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }
    */

}