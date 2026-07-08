package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class cz1 {
    public static volatile int d = 100;
    public int a;
    public int b;
    public boolean c;

    public static long b(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static cz1 c(byte[] bArr, int i, int i2, boolean z) {
        az1 az1Var = new az1(bArr, i2);
        try {
            az1Var.a(i2);
            return az1Var;
        } catch (s12 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int e(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public abstract int a(int i);

    public abstract int d();

    public cz1() {
        this.a = d;
        this.b = Integer.MAX_VALUE;
        this.c = false;
    }
}
