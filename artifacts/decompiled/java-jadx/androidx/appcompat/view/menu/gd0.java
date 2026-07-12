package androidx.appcompat.view.menu;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class gd0 extends xy0 {
    public static gd0 h(ByteBuffer byteBuffer) {
        return i(byteBuffer, new gd0());
    }

    public static gd0 i(ByteBuffer byteBuffer, gd0 gd0Var) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return gd0Var.f(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public gd0 f(int i, ByteBuffer byteBuffer) {
        g(i, byteBuffer);
        return this;
    }

    public void g(int i, ByteBuffer byteBuffer) {
        c(i, byteBuffer);
    }

    public fd0 j(fd0 fd0Var, int i) {
        int b = b(6);
        if (b != 0) {
            return fd0Var.f(a(d(b) + (i * 4)), this.b);
        }
        return null;
    }

    public int k() {
        int b = b(6);
        if (b != 0) {
            return e(b);
        }
        return 0;
    }

    public int l() {
        int b = b(4);
        if (b != 0) {
            return this.b.getInt(b + this.a);
        }
        return 0;
    }
}
