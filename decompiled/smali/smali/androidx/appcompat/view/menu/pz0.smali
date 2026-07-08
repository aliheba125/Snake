.class public abstract Landroidx/appcompat/view/menu/pz0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$e;

.field public static c:Landroidx/appcompat/view/menu/go0$b;

.field public static d:Landroidx/appcompat/view/menu/go0$b;

.field public static e:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/pz0;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getSubscriberInfoService"

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/go0;->z(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$e;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/pz0;->b:Landroidx/appcompat/view/menu/go0$e;

    const-string v2, "sServiceHandleCacheEnabled"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/pz0;->c:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "sIPhoneSubInfo"

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/go0;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0$b;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/pz0;->d:Landroidx/appcompat/view/menu/go0$b;

    const-string v2, "getSubscriberInfo"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/pz0;->e:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
