package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.appcompat.view.menu.sm0;
import androidx.appcompat.view.menu.vm0;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;

/* loaded from: classes.dex */
class TimePickerView extends ConstraintLayout {
    public final ClockFaceView A;
    public final MaterialButtonToggleGroup B;
    public final View.OnClickListener C;
    public final Chip x;
    public final Chip y;
    public final ClockHandView z;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TimePickerView.u(TimePickerView.this);
        }
    }

    public class b extends GestureDetector.SimpleOnGestureListener {
        public b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            TimePickerView.v(TimePickerView.this);
            return false;
        }
    }

    public class c implements View.OnTouchListener {
        public final /* synthetic */ GestureDetector a;

        public c(GestureDetector gestureDetector) {
            this.a = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.a.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    public interface d {
    }

    public interface e {
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static /* synthetic */ e u(TimePickerView timePickerView) {
        timePickerView.getClass();
        return null;
    }

    public static /* synthetic */ d v(TimePickerView timePickerView) {
        timePickerView.getClass();
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.y.sendAccessibilityEvent(8);
        }
    }

    public final /* synthetic */ void w(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
    }

    public final void x() {
        this.x.setTag(sm0.C, 12);
        this.y.setTag(sm0.C, 10);
        this.x.setOnClickListener(this.C);
        this.y.setOnClickListener(this.C);
        this.x.setAccessibilityClassName("android.view.View");
        this.y.setAccessibilityClassName("android.view.View");
    }

    public final void y() {
        c cVar = new c(new GestureDetector(getContext(), new b()));
        this.x.setOnTouchListener(cVar);
        this.y.setOnTouchListener(cVar);
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.C = new a();
        LayoutInflater.from(context).inflate(vm0.i, this);
        this.A = (ClockFaceView) findViewById(sm0.g);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(sm0.j);
        this.B = materialButtonToggleGroup;
        materialButtonToggleGroup.b(new MaterialButtonToggleGroup.d() { // from class: com.google.android.material.timepicker.b
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.d
            public final void a(MaterialButtonToggleGroup materialButtonToggleGroup2, int i2, boolean z) {
                TimePickerView.this.w(materialButtonToggleGroup2, i2, z);
            }
        });
        this.x = (Chip) findViewById(sm0.m);
        this.y = (Chip) findViewById(sm0.k);
        this.z = (ClockHandView) findViewById(sm0.h);
        y();
        x();
    }
}
