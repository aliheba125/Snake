package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class s22 implements o52 {
    public static final y32 b = new e32();
    public final y32 a;

    public s22() {
        this(new i32(t02.c(), b()));
    }

    public static y32 b() {
        try {
            return (y32) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return b;
        }
    }

    public static boolean c(s32 s32Var) {
        return w22.a[s32Var.b().ordinal()] != 1;
    }

    @Override // androidx.appcompat.view.menu.o52
    public final j52 a(Class cls) {
        m52.o(cls);
        s32 a = this.a.a(cls);
        return a.c() ? q02.class.isAssignableFrom(cls) ? i42.j(m52.u(), xz1.b(), a.a()) : i42.j(m52.f(), xz1.a(), a.a()) : q02.class.isAssignableFrom(cls) ? c(a) ? e42.n(cls, a, o42.b(), i22.c(), m52.u(), xz1.b(), u32.b()) : e42.n(cls, a, o42.b(), i22.c(), m52.u(), null, u32.b()) : c(a) ? e42.n(cls, a, o42.a(), i22.a(), m52.f(), xz1.a(), u32.a()) : e42.n(cls, a, o42.a(), i22.a(), m52.f(), null, u32.a());
    }

    public s22(y32 y32Var) {
        this.a = (y32) v02.f(y32Var, "messageInfoFactory");
    }
}
