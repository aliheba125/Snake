.class public abstract Landroidx/appcompat/view/menu/qz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/qz$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/appcompat/view/menu/go0;

.field public static b:Landroidx/appcompat/view/menu/go0$d;

.field public static c:Landroidx/appcompat/view/menu/go0$d;

.field public static d:Landroidx/appcompat/view/menu/go0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "android.app.IActivityManager"

    invoke-static {v0}, Landroidx/appcompat/view/menu/go0;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/go0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/qz;->a:Landroidx/appcompat/view/menu/go0;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v5, "getTaskForActivity"

    invoke-virtual {v0, v5, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/qz;->b:Landroidx/appcompat/view/menu/go0$d;

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v6

    const-string v7, "setRequestedOrientation"

    invoke-virtual {v0, v7, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/view/menu/qz;->c:Landroidx/appcompat/view/menu/go0$d;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Class;

    const-string v7, "android.app.IApplicationThread"

    invoke-static {v7}, Landroidx/appcompat/view/menu/go0;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v2, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    const-class v6, Landroid/content/Intent;

    aput-object v6, v2, v1

    const/4 v1, 0x3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    aput-object v4, v2, v1

    const/4 v1, 0x5

    aput-object v3, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const/4 v1, 0x7

    aput-object v5, v2, v1

    const-string v1, "android.app.ProfilerInfo"

    invoke-static {v1}, Landroidx/appcompat/view/menu/go0;->f(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v2, v3

    const/16 v1, 0x9

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v1

    const-string v1, "startActivity"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/go0;->u(Ljava/lang/String;[Ljava/lang/Class;)Landroidx/appcompat/view/menu/go0$d;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/qz;->d:Landroidx/appcompat/view/menu/go0$d;

    return-void
.end method
