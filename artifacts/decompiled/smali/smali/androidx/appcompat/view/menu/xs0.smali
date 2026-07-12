.class public abstract Landroidx/appcompat/view/menu/xs0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.app.Service"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/xs0;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Landroid/app/Application;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "attach"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/xs0;->b:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
