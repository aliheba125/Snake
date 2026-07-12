package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class xz1 {
    public static final vz1 a = new zz1();
    public static final vz1 b = c();

    public static vz1 a() {
        vz1 vz1Var = b;
        if (vz1Var != null) {
            return vz1Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static vz1 b() {
        return a;
    }

    public static vz1 c() {
        try {
            return (vz1) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
