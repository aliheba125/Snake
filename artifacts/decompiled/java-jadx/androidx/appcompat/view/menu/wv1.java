package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class wv1 extends ov1 {
    public wv1(ew1 ew1Var, String str, Long l, boolean z) {
        super(ew1Var, str, l);
    }

    @Override // androidx.appcompat.view.menu.ov1
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public final Long h(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String k = super.k();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder("Invalid long value for ");
        sb.append(k);
        sb.append(": ");
        sb.append(valueOf);
        return null;
    }
}
