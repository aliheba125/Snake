package androidx.appcompat.view.menu;

import android.graphics.Insets;
import android.graphics.Rect;

/* loaded from: classes.dex */
public final class h50 {
    public static final h50 e = new h50(0, 0, 0, 0);
    public final int a;
    public final int b;
    public final int c;
    public final int d;

    public static class a {
        public static Insets a(int i, int i2, int i3, int i4) {
            return Insets.of(i, i2, i3, i4);
        }
    }

    public h50(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    public static h50 a(h50 h50Var, h50 h50Var2) {
        return b(Math.max(h50Var.a, h50Var2.a), Math.max(h50Var.b, h50Var2.b), Math.max(h50Var.c, h50Var2.c), Math.max(h50Var.d, h50Var2.d));
    }

    public static h50 b(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? e : new h50(i, i2, i3, i4);
    }

    public static h50 c(Rect rect) {
        return b(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static h50 d(Insets insets) {
        int i;
        int i2;
        int i3;
        int i4;
        i = insets.left;
        i2 = insets.top;
        i3 = insets.right;
        i4 = insets.bottom;
        return b(i, i2, i3, i4);
    }

    public Insets e() {
        return a.a(this.a, this.b, this.c, this.d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h50.class != obj.getClass()) {
            return false;
        }
        h50 h50Var = (h50) obj;
        return this.d == h50Var.d && this.a == h50Var.a && this.c == h50Var.c && this.b == h50Var.b;
    }

    public int hashCode() {
        return (((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d;
    }

    public String toString() {
        return "Insets{left=" + this.a + ", top=" + this.b + ", right=" + this.c + ", bottom=" + this.d + '}';
    }
}
