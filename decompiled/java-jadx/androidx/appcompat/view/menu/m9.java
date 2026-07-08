package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class m9 extends va {
    public final tw e;

    public static final class a extends zg {
        public Object p;
        public /* synthetic */ Object q;
        public int s;

        public a(xg xgVar) {
            super(xgVar);
        }

        @Override // androidx.appcompat.view.menu.y7
        public final Object k(Object obj) {
            this.q = obj;
            this.s |= Integer.MIN_VALUE;
            return m9.this.e(null, this);
        }
    }

    public /* synthetic */ m9(tw twVar, kh khVar, int i, u8 u8Var, int i2, lj ljVar) {
        this(twVar, (i2 & 2) != 0 ? bo.m : khVar, (i2 & 4) != 0 ? -2 : i, (i2 & 8) != 0 ? u8.SUSPEND : u8Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.appcompat.view.menu.va, androidx.appcompat.view.menu.ua
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object e(gk0 gk0Var, xg xgVar) {
        a aVar;
        Object c;
        int i;
        if (xgVar instanceof a) {
            aVar = (a) xgVar;
            int i2 = aVar.s;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                aVar.s = i2 - Integer.MIN_VALUE;
                Object obj = aVar.q;
                c = c60.c();
                i = aVar.s;
                if (i != 0) {
                    op0.b(obj);
                    aVar.p = gk0Var;
                    aVar.s = 1;
                    if (super.e(gk0Var, aVar) == c) {
                        return c;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    gk0Var = (gk0) aVar.p;
                    op0.b(obj);
                }
                if (gk0Var.A()) {
                    throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
                }
                return r31.a;
            }
        }
        aVar = new a(xgVar);
        Object obj2 = aVar.q;
        c = c60.c();
        i = aVar.s;
        if (i != 0) {
        }
        if (gk0Var.A()) {
        }
    }

    @Override // androidx.appcompat.view.menu.ua
    public ua f(kh khVar, int i, u8 u8Var) {
        return new m9(this.e, khVar, i, u8Var);
    }

    public m9(tw twVar, kh khVar, int i, u8 u8Var) {
        super(twVar, khVar, i, u8Var);
        this.e = twVar;
    }
}
