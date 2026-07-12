package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class i70 {
    public static final Class a(k70 k70Var) {
        z50.e(k70Var, "<this>");
        Class d = ((nb) k70Var).d();
        z50.c(d, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        return d;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class b(k70 k70Var) {
        z50.e(k70Var, "<this>");
        Class d = ((nb) k70Var).d();
        if (!d.isPrimitive()) {
            z50.c(d, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
            return d;
        }
        String name = d.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    d = Double.class;
                    break;
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    d = Integer.class;
                    break;
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    d = Byte.class;
                    break;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    d = Character.class;
                    break;
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    d = Long.class;
                    break;
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    d = Void.class;
                    break;
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    d = Boolean.class;
                    break;
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    d = Float.class;
                    break;
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    d = Short.class;
                    break;
                }
                break;
        }
        z50.c(d, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
        return d;
    }

    public static final k70 c(Class cls) {
        z50.e(cls, "<this>");
        return do0.b(cls);
    }
}
