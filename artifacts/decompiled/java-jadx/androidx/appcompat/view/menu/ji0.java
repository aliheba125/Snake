package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MotionEvent;
import androidx.appcompat.view.menu.ot;

/* loaded from: classes.dex */
public class ji0 extends ot {
    public d0 g;

    public ji0(Context context, int i, int i2, d0 d0Var) {
        super(context, i, i2, ot.b.overlay);
        this.g = d0Var;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        d0 d0Var = this.g;
        if (d0Var == null || !d0Var.a(motionEvent, true)) {
            return super.onHoverEvent(motionEvent);
        }
        return true;
    }
}
