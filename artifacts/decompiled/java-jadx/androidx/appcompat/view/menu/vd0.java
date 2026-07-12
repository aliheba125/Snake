package androidx.appcompat.view.menu;

import android.view.MotionEvent;

/* loaded from: classes.dex */
public abstract class vd0 {
    public static boolean a(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }
}
