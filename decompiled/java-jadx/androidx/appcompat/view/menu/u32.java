package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class u32 {
    public static final q32 a = c();
    public static final q32 b = new o32();

    public static q32 a() {
        return a;
    }

    public static q32 b() {
        return b;
    }

    public static q32 c() {
        try {
            return (q32) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
