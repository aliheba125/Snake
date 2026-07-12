.class public abstract Landroidx/appcompat/view/menu/v90;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$d;

.field public static c:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.location.LocationManager$GnssStatusListenerTransport"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v90;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "onGnssStarted"

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/v90;->b:Landroidx/appcompat/view/menu/go0$d;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "onNmeaReceived"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/v90;->c:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
