package androidx.appcompat.view.menu;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'q' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class v12 {
    public static final v12 p;
    public static final v12 q;
    public static final v12 r;
    public static final v12 s;
    public static final v12 t;
    public static final v12 u;
    public static final v12 v;
    public static final v12 w;
    public static final v12 x;
    public static final v12 y;
    public static final /* synthetic */ v12[] z;
    public final Class m;
    public final Class n;
    public final Object o;

    static {
        v12 v12Var = new v12("VOID", 0, Void.class, Void.class, null);
        p = v12Var;
        Class cls = Integer.TYPE;
        v12 v12Var2 = new v12("INT", 1, cls, Integer.class, 0);
        q = v12Var2;
        v12 v12Var3 = new v12("LONG", 2, Long.TYPE, Long.class, 0L);
        r = v12Var3;
        v12 v12Var4 = new v12("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        s = v12Var4;
        v12 v12Var5 = new v12("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        t = v12Var5;
        v12 v12Var6 = new v12("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        u = v12Var6;
        v12 v12Var7 = new v12("STRING", 6, String.class, String.class, "");
        v = v12Var7;
        v12 v12Var8 = new v12("BYTE_STRING", 7, qx1.class, qx1.class, qx1.n);
        w = v12Var8;
        v12 v12Var9 = new v12("ENUM", 8, cls, Integer.class, null);
        x = v12Var9;
        v12 v12Var10 = new v12("MESSAGE", 9, Object.class, Object.class, null);
        y = v12Var10;
        z = new v12[]{v12Var, v12Var2, v12Var3, v12Var4, v12Var5, v12Var6, v12Var7, v12Var8, v12Var9, v12Var10};
    }

    public v12(String str, int i, Class cls, Class cls2, Object obj) {
        this.m = cls;
        this.n = cls2;
        this.o = obj;
    }

    public static v12[] values() {
        return (v12[]) z.clone();
    }

    public final Class c() {
        return this.n;
    }
}
