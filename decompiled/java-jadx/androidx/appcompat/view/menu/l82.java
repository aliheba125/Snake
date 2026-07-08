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
public class l82 {
    public static final l82 A;
    public static final l82 B;
    public static final l82 C;
    public static final l82 D;
    public static final l82 E;
    public static final l82 F;
    public static final /* synthetic */ l82[] G;
    public static final l82 o;
    public static final l82 p;
    public static final l82 q;
    public static final l82 r;
    public static final l82 s;
    public static final l82 t;
    public static final l82 u;
    public static final l82 v;
    public static final l82 w;
    public static final l82 x;
    public static final l82 y;
    public static final l82 z;
    public final f92 m;
    public final int n;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        l82 l82Var = new l82("DOUBLE", 0, f92.DOUBLE, 1);
        o = l82Var;
        l82 l82Var2 = new l82("FLOAT", 1, f92.FLOAT, 5);
        p = l82Var2;
        f92 f92Var = f92.LONG;
        l82 l82Var3 = new l82("INT64", 2, f92Var, 0);
        q = l82Var3;
        l82 l82Var4 = new l82("UINT64", 3, f92Var, 0);
        r = l82Var4;
        f92 f92Var2 = f92.INT;
        l82 l82Var5 = new l82("INT32", 4, f92Var2, 0);
        s = l82Var5;
        l82 l82Var6 = new l82("FIXED64", 5, f92Var, 1);
        t = l82Var6;
        l82 l82Var7 = new l82("FIXED32", 6, f92Var2, 5);
        u = l82Var7;
        l82 l82Var8 = new l82("BOOL", 7, f92.BOOLEAN, 0);
        v = l82Var8;
        int i = 2;
        j82 j82Var = new j82("STRING", f92.STRING);
        w = j82Var;
        f92 f92Var3 = f92.MESSAGE;
        n82 n82Var = new n82("GROUP", f92Var3);
        x = n82Var;
        r82 r82Var = new r82("MESSAGE", f92Var3);
        y = r82Var;
        v82 v82Var = new v82("BYTES", f92.BYTE_STRING);
        z = v82Var;
        l82 l82Var9 = new l82("UINT32", 12, f92Var2, 0);
        A = l82Var9;
        l82 l82Var10 = new l82("ENUM", 13, f92.ENUM, 0);
        B = l82Var10;
        l82 l82Var11 = new l82("SFIXED32", 14, f92Var2, 5);
        C = l82Var11;
        l82 l82Var12 = new l82("SFIXED64", 15, f92Var, 1);
        D = l82Var12;
        l82 l82Var13 = new l82("SINT32", 16, f92Var2, 0);
        E = l82Var13;
        l82 l82Var14 = new l82("SINT64", 17, f92Var, 0);
        F = l82Var14;
        G = new l82[]{l82Var, l82Var2, l82Var3, l82Var4, l82Var5, l82Var6, l82Var7, l82Var8, j82Var, n82Var, r82Var, v82Var, l82Var9, l82Var10, l82Var11, l82Var12, l82Var13, l82Var14};
    }

    public static l82[] values() {
        return (l82[]) G.clone();
    }

    public final f92 c() {
        return this.m;
    }

    public l82(String str, int i, f92 f92Var, int i2) {
        this.m = f92Var;
        this.n = i2;
    }
}
