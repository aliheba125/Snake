package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class p11 implements AutoCloseable {
    public p11(String str) {
        a(str);
    }

    public static void a(String str) {
        l11.c(d(str));
    }

    public static void c(String str, int i) {
        l11.a(d(str), i);
    }

    public static String d(String str) {
        if (str.length() < 124) {
            return str;
        }
        return str.substring(0, 124) + "...";
    }

    public static void e() {
        l11.f();
    }

    public static void h(String str, int i) {
        l11.d(d(str), i);
    }

    public static p11 i(String str) {
        return new p11(str);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        e();
    }
}
