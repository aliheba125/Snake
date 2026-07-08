.class public abstract Landroidx/appcompat/view/menu/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$d;

.field public static c:Landroidx/appcompat/view/menu/go0$d;

.field public static d:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/u1;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-class v5, Ljava/util/List;

    aput-object v5, v1, v4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-string v6, "handleNewIntent"

    invoke-virtual {v0, v6, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/u1;->b:Landroidx/appcompat/view/menu/go0$d;

    new-array v1, v7, [Ljava/lang/Class;

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    invoke-virtual {v0, v6, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v1

    sput-object v1, Landroidx/appcompat/view/menu/u1;->c:Landroidx/appcompat/view/menu/go0$d;

    new-array v1, v7, [Ljava/lang/Class;

    const-string v3, "android.app.ActivityThread$ActivityClientRecord"

    invoke-static {v3}, Landroidx/appcompat/view/menu/go0;->v(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v5, v1, v4

    invoke-virtual {v0, v6, v1}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/u1;->d:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
