package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class sy0 implements dc {
    public static sy0 a;

    public static sy0 b() {
        if (a == null) {
            a = new sy0();
        }
        return a;
    }

    @Override // androidx.appcompat.view.menu.dc
    public long a() {
        return System.currentTimeMillis();
    }
}
