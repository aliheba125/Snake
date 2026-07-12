package androidx.appcompat.view.menu;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;

/* loaded from: classes.dex */
public class z21 {
    public static final ThreadLocal d = new ThreadLocal();
    public final int a;
    public final androidx.emoji2.text.f b;
    public volatile int c = 0;

    public z21(androidx.emoji2.text.f fVar, int i) {
        this.b = fVar;
        this.a = i;
    }

    public void a(Canvas canvas, float f, float f2, Paint paint) {
        Typeface g = this.b.g();
        Typeface typeface = paint.getTypeface();
        paint.setTypeface(g);
        canvas.drawText(this.b.c(), this.a * 2, 2, f, f2, paint);
        paint.setTypeface(typeface);
    }

    public int b(int i) {
        return g().h(i);
    }

    public int c() {
        return g().i();
    }

    public int d() {
        return this.c & 3;
    }

    public int e() {
        return g().k();
    }

    public int f() {
        return g().l();
    }

    public final fd0 g() {
        ThreadLocal threadLocal = d;
        fd0 fd0Var = (fd0) threadLocal.get();
        if (fd0Var == null) {
            fd0Var = new fd0();
            threadLocal.set(fd0Var);
        }
        this.b.d().j(fd0Var, this.a);
        return fd0Var;
    }

    public short h() {
        return g().m();
    }

    public int i() {
        return g().n();
    }

    public boolean j() {
        return g().j();
    }

    public boolean k() {
        return (this.c & 4) > 0;
    }

    public void l(boolean z) {
        int d2 = d();
        if (z) {
            this.c = d2 | 4;
        } else {
            this.c = d2;
        }
    }

    public void m(boolean z) {
        int i = this.c & 4;
        this.c = z ? i | 2 : i | 1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sb.append(Integer.toHexString(f()));
        sb.append(", codepoints:");
        int c = c();
        for (int i = 0; i < c; i++) {
            sb.append(Integer.toHexString(b(i)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
