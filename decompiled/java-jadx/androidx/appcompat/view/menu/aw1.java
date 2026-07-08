package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class aw1 extends ov1 {
    public aw1(ew1 ew1Var, String str, Double d, boolean z) {
        super(ew1Var, str, d);
    }

    @Override // androidx.appcompat.view.menu.ov1
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public final Double h(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String k = super.k();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder("Invalid double value for ");
        sb.append(k);
        sb.append(": ");
        sb.append(valueOf);
        return null;
    }
}
