package androidx.appcompat.view.menu;

import android.window.BackEvent;

/* loaded from: classes.dex */
public final class h7 {
    public static final a e = new a(null);
    public final float a;
    public final float b;
    public final float c;
    public final int d;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }
    }

    public h7(float f, float f2, float f3, int i) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = i;
    }

    public final float a() {
        return this.c;
    }

    public String toString() {
        return "BackEventCompat{touchX=" + this.a + ", touchY=" + this.b + ", progress=" + this.c + ", swipeEdge=" + this.d + '}';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public h7(BackEvent backEvent) {
        this(r0.d(backEvent), r0.e(backEvent), r0.b(backEvent), r0.c(backEvent));
        z50.e(backEvent, "backEvent");
        n2 n2Var = n2.a;
    }
}
