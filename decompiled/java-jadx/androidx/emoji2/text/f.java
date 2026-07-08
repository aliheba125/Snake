package androidx.emoji2.text;

import android.graphics.Typeface;
import android.util.SparseArray;
import androidx.appcompat.view.menu.gd0;
import androidx.appcompat.view.menu.hd0;
import androidx.appcompat.view.menu.o11;
import androidx.appcompat.view.menu.qj0;
import androidx.appcompat.view.menu.z21;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class f {
    public final gd0 a;
    public final char[] b;
    public final a c = new a(1024);
    public final Typeface d;

    public static class a {
        public final SparseArray a;
        public z21 b;

        public a() {
            this(1);
        }

        public a a(int i) {
            SparseArray sparseArray = this.a;
            if (sparseArray == null) {
                return null;
            }
            return (a) sparseArray.get(i);
        }

        public final z21 b() {
            return this.b;
        }

        public void c(z21 z21Var, int i, int i2) {
            a a = a(z21Var.b(i));
            if (a == null) {
                a = new a();
                this.a.put(z21Var.b(i), a);
            }
            if (i2 > i) {
                a.c(z21Var, i + 1, i2);
            } else {
                a.b = z21Var;
            }
        }

        public a(int i) {
            this.a = new SparseArray(i);
        }
    }

    public f(Typeface typeface, gd0 gd0Var) {
        this.d = typeface;
        this.a = gd0Var;
        this.b = new char[gd0Var.k() * 2];
        a(gd0Var);
    }

    public static f b(Typeface typeface, ByteBuffer byteBuffer) {
        try {
            o11.a("EmojiCompat.MetadataRepo.create");
            return new f(typeface, hd0.b(byteBuffer));
        } finally {
            o11.b();
        }
    }

    public final void a(gd0 gd0Var) {
        int k = gd0Var.k();
        for (int i = 0; i < k; i++) {
            z21 z21Var = new z21(this, i);
            Character.toChars(z21Var.f(), this.b, i * 2);
            h(z21Var);
        }
    }

    public char[] c() {
        return this.b;
    }

    public gd0 d() {
        return this.a;
    }

    public int e() {
        return this.a.l();
    }

    public a f() {
        return this.c;
    }

    public Typeface g() {
        return this.d;
    }

    public void h(z21 z21Var) {
        qj0.h(z21Var, "emoji metadata cannot be null");
        qj0.b(z21Var.c() > 0, "invalid metadata codepoint length");
        this.c.c(z21Var, 0, z21Var.c() - 1);
    }
}
