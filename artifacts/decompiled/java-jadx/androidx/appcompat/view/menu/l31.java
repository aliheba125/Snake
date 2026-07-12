package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class l31 implements ts {
    public final kh a;
    public final Object b;
    public final tw c;

    public static final class a extends ly0 implements tw {
        public int q;
        public /* synthetic */ Object r;
        public final /* synthetic */ ts s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ts tsVar, xg xgVar) {
            super(2, xgVar);
            this.s = tsVar;
        }

        @Override // androidx.appcompat.view.menu.y7
        public final xg a(Object obj, xg xgVar) {
            a aVar = new a(this.s, xgVar);
            aVar.r = obj;
            return aVar;
        }

        @Override // androidx.appcompat.view.menu.y7
        public final Object k(Object obj) {
            Object c;
            c = c60.c();
            int i = this.q;
            if (i == 0) {
                op0.b(obj);
                Object obj2 = this.r;
                ts tsVar = this.s;
                this.q = 1;
                if (tsVar.a(obj2, this) == c) {
                    return c;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                op0.b(obj);
            }
            return r31.a;
        }

        @Override // androidx.appcompat.view.menu.tw
        /* renamed from: o, reason: merged with bridge method [inline-methods] */
        public final Object h(Object obj, xg xgVar) {
            return ((a) a(obj, xgVar)).k(r31.a);
        }
    }

    public l31(ts tsVar, kh khVar) {
        this.a = khVar;
        this.b = i01.b(khVar);
        this.c = new a(tsVar, null);
    }

    @Override // androidx.appcompat.view.menu.ts
    public Object a(Object obj, xg xgVar) {
        Object c;
        Object b = wa.b(this.a, obj, this.b, this.c, xgVar);
        c = c60.c();
        return b == c ? b : r31.a;
    }
}
