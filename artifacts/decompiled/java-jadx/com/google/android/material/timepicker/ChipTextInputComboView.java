package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.e01;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.m61;
import androidx.appcompat.view.menu.p01;
import androidx.appcompat.view.menu.sm0;
import androidx.appcompat.view.menu.vm0;
import com.google.android.material.chip.Chip;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {
    public final Chip a;
    public final TextInputLayout b;
    public final EditText c;
    public TextWatcher d;
    public TextView e;

    public class b extends e01 {
        public b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.a.setText(ChipTextInputComboView.this.c("00"));
                return;
            }
            String c = ChipTextInputComboView.this.c(editable);
            Chip chip = ChipTextInputComboView.this.a;
            if (TextUtils.isEmpty(c)) {
                c = ChipTextInputComboView.this.c("00");
            }
            chip.setText(c);
        }
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final String c(CharSequence charSequence) {
        return p01.a(getResources(), charSequence);
    }

    public final void d() {
        this.c.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.a.isChecked();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.a.setChecked(z);
        this.c.setVisibility(z ? 0 : 4);
        this.a.setVisibility(z ? 8 : 0);
        if (isChecked()) {
            m61.k(this.c, false);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.a.setTag(i, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.a.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(vm0.g, (ViewGroup) this, false);
        this.a = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(vm0.h, (ViewGroup) this, false);
        this.b = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.c = editText;
        editText.setVisibility(4);
        b bVar = new b();
        this.d = bVar;
        editText.addTextChangedListener(bVar);
        d();
        addView(chip);
        addView(textInputLayout);
        this.e = (TextView) findViewById(sm0.l);
        editText.setId(m51.h());
        m51.x0(this.e, editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }
}
