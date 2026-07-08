package androidx.appcompat.view.menu;

import android.view.View;
import android.view.WindowId;

/* loaded from: classes.dex */
public class d81 implements e81 {
    public final WindowId a;

    public d81(View view) {
        this.a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof d81) && ((d81) obj).a.equals(this.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
