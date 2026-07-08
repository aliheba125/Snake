package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class uv1 extends ov1 {
    public uv1(ew1 ew1Var, String str, Boolean bool, boolean z) {
        super(ew1Var, str, bool);
    }

    @Override // androidx.appcompat.view.menu.ov1
    public final /* synthetic */ Object h(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (ot1.c.matcher(str).matches()) {
                return Boolean.TRUE;
            }
            if (ot1.d.matcher(str).matches()) {
                return Boolean.FALSE;
            }
        }
        String k = super.k();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder("Invalid boolean value for ");
        sb.append(k);
        sb.append(": ");
        sb.append(valueOf);
        return null;
    }
}
