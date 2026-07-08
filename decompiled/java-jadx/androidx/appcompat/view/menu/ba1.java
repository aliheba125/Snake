package androidx.appcompat.view.menu;

import android.graphics.Rect;
import androidx.appcompat.view.menu.y81;

/* loaded from: classes.dex */
public final class ba1 {
    public final q8 a;
    public final y81 b;

    public ba1(q8 q8Var, y81 y81Var) {
        z50.e(q8Var, "_bounds");
        z50.e(y81Var, "_windowInsetsCompat");
        this.a = q8Var;
        this.b = y81Var;
    }

    public final Rect a() {
        return this.a.f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!z50.a(ba1.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        z50.c(obj, "null cannot be cast to non-null type androidx.window.layout.WindowMetrics");
        ba1 ba1Var = (ba1) obj;
        return z50.a(this.a, ba1Var.a) && z50.a(this.b, ba1Var.b);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "WindowMetrics( bounds=" + this.a + ", windowInsetsCompat=" + this.b + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ ba1(Rect rect, y81 y81Var, int i, lj ljVar) {
        this(rect, y81Var);
        if ((i & 2) != 0) {
            y81Var = new y81.b().a();
            z50.d(y81Var, "Builder().build()");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ba1(Rect rect, y81 y81Var) {
        this(new q8(rect), y81Var);
        z50.e(rect, "bounds");
        z50.e(y81Var, "insets");
    }
}
