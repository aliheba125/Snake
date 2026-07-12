package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class z42 implements s32 {
    public final w32 a;
    public final String b;
    public final Object[] c;
    public final int d;

    public z42(w32 w32Var, String str, Object[] objArr) {
        this.a = w32Var;
        this.b = str;
        this.c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.d = i | (charAt2 << i2);
                return;
            } else {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.s32
    public final w32 a() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.s32
    public final x42 b() {
        int i = this.d;
        return (i & 1) != 0 ? x42.PROTO2 : (i & 4) == 4 ? x42.EDITIONS : x42.PROTO3;
    }

    @Override // androidx.appcompat.view.menu.s32
    public final boolean c() {
        return (this.d & 2) == 2;
    }

    public final String d() {
        return this.b;
    }

    public final Object[] e() {
        return this.c;
    }
}
