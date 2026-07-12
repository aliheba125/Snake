package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class o42 {
    public static final l42 a = c();
    public static final l42 b = new p42();

    public static l42 a() {
        return a;
    }

    public static l42 b() {
        return b;
    }

    public static l42 c() {
        try {
            return (l42) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
